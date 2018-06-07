defmodule SearchWords do
  def procurar_palavra(word, process) do
    IO.puts("")
    time_total_inicial = Time.utc_now()
    paths = criar_caminho([File.cwd!()], [], process)
    path_by_process = Enum.chunk_every(paths, process)
    time_path_final = Time.diff(Time.utc_now(), time_total_inicial)
    IO.puts("")

    time_inicial_arquivos = Time.utc_now()
    pids =
      Enum.map(path_by_process, &spawn(__MODULE__, :procurar_por_arquivo, [&1, word, self()]))

    {:ok, {paths2, arquivos}} = loop([], [], 0, pids)
    time_final_arquivos = Time.diff(Time.utc_now(), time_inicial_arquivos)

    time_total_final = Time.diff(Time.utc_now(), time_total_inicial)
    IO.puts("\nTempo pesquisa de todos arquivos e dir: #{time_path_final} s")
    IO.puts("Tempo de verificação de pesquisa de arquivos: #{time_final_arquivos} s")
    IO.puts("\e[1mTempo total: #{time_total_final} s\e[0m")
    IO.puts("\e[1mProcessos totais: #{length(pids)}\e[0m")
    IO.puts("\e[1mTotais de arquivos: #{length(paths)}\e[0m")

    salvar =
      IO.gets("Deseja salvar a busca dos arquivos S/n? ")
      |> String.trim()
      |> String.upcase()

    if String.contains?(salvar, ["S", "SIM", "Y", "YES"]) do
      lista_total = ["Arquivos"] ++ arquivos ++ [""] ++ ["Caminhos"] ++ paths2

      IO.puts("\nCriando encontrados.txt com arquivos e caminhos encontrados ")
      File.touch!("encontrados.txt")
      File.write("encontrados.txt", Enum.join(lista_total, "\n"))
    end
  end

  def criar_caminho([], dir, _), do: dir

  def criar_caminho([head | tail], dir, process) do
    if File.dir?(head) do
      pids =
        head
        |> File.ls!()
        |> Enum.chunk_every(process)
        |> Enum.map(&spawn(__MODULE__, :caminhos, [&1, head, self()]))

      novos_arq =
        if pids != [] do
          loop_caminhos([], pids)
        else
          IO.puts("\e[31m Diretório vázio? \e[1m#{inspect(head)}\e[0m")
          []
        end

      nova_lista = novos_arq ++ tail
      novo_dir = novos_arq ++ dir
      criar_caminho(nova_lista, novo_dir, process)
    else
      criar_caminho(tail, dir, process)
    end
  end

  def caminhos([], _, pid), do: send(pid, {:fim_caminhos, self()})

  def caminhos([h | tail], head_total, pid) do
    novo_caminho = String.myers_difference(File.cwd!(), head_total)
    send(pid, {:path, "#{novo_caminho[:eq]}#{novo_caminho[:ins]}/#{h}"})
    caminhos(tail, head_total, pid)
  end

  def loop_caminhos(paths, pids) do
    receive do
      {:path, path} ->
        IO.puts(path)
        loop_caminhos([path | paths], pids)

      {:fim_caminhos, pid} ->
        pids = List.delete(pids, pid)

        if pids == [] do
          paths
        else
          Process.exit(pid, :normal)
          loop_caminhos(paths, pids)
        end
    after
      1000 ->
        IO.puts("\e[31mErro \e[1m#{inspect(pids)} #{inspect(paths)}\e[0m")
        IO.puts("\e[31m#{String.duplicate("#", 100)}\e[0m")
        paths
    end
  end

  def loop(paths, arquivos, erros, pids) do
    receive do
      {:found, path} ->
        arquivo = List.last(String.split(path, "/"))
        path = Enum.join(List.delete(String.split(path, "/"), arquivo), "/")

        IO.puts("\e[32m #{path}\e[0m \e[1m->\e[0m  \e[94m#{arquivo} \e[0m")
        loop([path | paths], [arquivo | arquivos], erros, pids)

      {:erro, n, text, path} ->
        IO.puts("\e[31mErro \e[1m#{Atom.to_string(text)}?\e[0m\e[31m #{path}\e[0m")
        loop(paths, arquivos, erros + n, pids)

      {:fim, pid} ->
        pids = List.delete(pids, pid)

        if pids == [] do
          IO.puts("\nDiretórios: \e[33m #{inspect(paths)} \e[0m\n")
          IO.puts("Arquivos: \e[33m #{inspect(arquivos)} \e[0m")
          IO.puts("\nTamanho da lista de arquivos encontrados: \e[95m#{length(paths)}\e[0m")
          IO.puts("Erros encontrados: \e[1m\e[31m#{erros}\e[0m")
          {:ok, {paths, arquivos}}
        else
          Process.exit(pid, :normal)
          loop(paths, arquivos, erros, pids)
        end
    end
  end

  def procurar_por_arquivo([], _word, pid), do: send(pid, {:fim, self()})

  def procurar_por_arquivo([h | t], word, pid) do
    case File.read(h) do
      {:ok, text} ->
        if String.contains?(text, word) do
          send(pid, {:found, h})
        end

        procurar_por_arquivo(t, word, pid)

      {:error, error} ->
        send(pid, {:erro, 1, error, h})
        procurar_por_arquivo(t, word, pid)
    end
  end
end

SearchWords.procurar_palavra("Agent", 100)

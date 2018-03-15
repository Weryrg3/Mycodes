defmodule Client do
  @interval 2000  # 100%
  @name :ticker # 100%

  def initial do
    pid = spawn(__MODULE__, :generator, [[], 0]) # 100%
    :global.register_name(@name, pid) # 100%
  end

  def register(client_pid) do
    try do
      send(:global.whereis_name(@name), {:register, client_pid, Node.self()})
    rescue
      ArgumentError -> "Try 'Client.initial' for start the aplication"
    end
  end

  def start do
    pid = spawn(__MODULE__, :receiver, [])
    Client.register(pid)
  end

  def receiver do
    receive do
      {:tick, pid} ->
        [node_s, _] = Atom.to_string(Node.self) |> String.split("@")
        IO.puts("tock in client name: #{node_s} ID: #{String.replace(inspect(pid), ["#", "<", ">", "PID"], "")}")
        receiver()
    end
  end

  def generator(clients, n) do
    receive do
      {:register, pid, node_self} ->
        IO.puts("registering #{inspect(pid)}")
        [node_self, _] = Atom.to_string(node_self) |> String.split("@")
        clients = [{pid, node_self} | clients]
        generator(clients, length(clients) - 1)

      after
        @interval ->
          n = if n < 0, do: length(clients) - 1, else: n
          case length(clients) do
            0 -> IO.puts("Client waiting client for tick")
            _ ->
              {pid, no} = Enum.at(clients, n)
              IO.puts("tick client name: #{no} ID: #{String.replace(inspect(pid), ["#", "<", ">", "PID"], "")}")
              send(pid, {:tick, pid})
          end

          generator(clients, n - 1)
    end
  end
end

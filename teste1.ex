defmodule TestMonitor1 do
  def stoped_fun() do
    # send self(), {:ok}
    exit(:bofu)
    # receive do
      # {:ok} -> "Deu certo"
    # end
  end

  def tester() do
    IO.inspect(spawn_monitor(__MODULE__, :stoped_fun, []))

    receive do
      msg ->
        IO.puts("#{inspect msg}")
    after
      1000 ->
        IO.puts("Sem erros")
    end
  end
end

defmodule TestLink1 do
  def stoped_fun() do
    send self(), {:ok}
    # receive do
      # {:ok} -> "Deu certo"
    # end
  end

  def tester() do
    Process.flag(:trap_exit, true)
    IO.inspect(spawn_link(__MODULE__, :stoped_fun, []))

    receive do
      msg ->
        IO.puts("#{inspect msg}")
    after
      1000 ->
        IO.puts("Sem erros")
    end
  end
end

# TestMonitor1.tester()
TestLink1.tester()

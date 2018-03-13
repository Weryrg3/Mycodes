# C17N = Cápiulo 17 -> Node
defmodule Ticker do
  # 2 seconds
  @interval 2000
  @name :ticker
  def start do
    pid = spawn(__MODULE__, :generator, [[], 0])
    :global.register_name(@name, pid)
  end

  def register(client_pid) do
    try do
      send(:global.whereis_name(@name), {:register, client_pid})
    rescue
      ArgumentError -> "Tick not found!!!"
    end
  end

  def generator(clients, n) do
    receive do
      {:register, pid} ->
        IO.puts("registering #{inspect(pid)}")
        Process.monitor(pid)
        generator([pid | clients], n)

      {_, _, _, pid_error, :noconnection} ->
        IO.puts("unregistering client ID: #{String.replace(inspect(pid_error), ["#", "<", ">", "PID"], "")}")
        clients = List.delete(clients, pid_error)
        n = length(clients) - 1
        generator(clients, n)
    after
      @interval ->
        n = if n < 0, do: length(clients) - 1, else: n

        if clients == [] do
          IO.puts("Waiting client for tick")
        else
          pid = Enum.at(clients, n)
          IO.puts("tick ID: #{String.replace(inspect(pid), ["#", "<", ">", "PID"], "")}")
          send(pid, {:tick, pid})
        end

        generator(clients, n - 1)
    end
  end
end

defmodule Client do
  def start do
    pid = spawn(__MODULE__, :receiver, [])
    Ticker.register(pid)
  end

  def receiver() do
    receive do
      {:tick, pid} ->
        IO.puts("tock in client name: #{Node.self} ID: #{String.replace(inspect(pid), ["#", "<", ">", "PID"], "")}")
        receiver()
    end
  end
end

defmodule Monitor do
  def start() do

  end
end

defmodule Link do
end

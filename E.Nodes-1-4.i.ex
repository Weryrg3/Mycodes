# Exercise: Nodes-1
# Set up two terminal windows, and go to a different directory in each. Then
# start up a named node in each. In one window, write a function that lists
# the contents of the current directory.
# fun = fn -> IO.puts(Enum.join(File.ls!, ",")) end
# Run it twice, once on each node.
# Repondida no terminal, esse código ou nó consegue ver e interagir
# com outras pastas dependendo de onde o outro nó está
############################################################################

# Exercise: Nodes-2
# When I introduced the interval server, I said it sent a tick "about every 2
# seconds." But in the receive loop, it has an explicit timeout of 2,000 ms.
# Why did I say "about" when it looks as if the time should be pretty accurate?

# Porque muitas vezes o código demora mais para executar ultrapassando os 2 segundos

# Exercise: Nodes-3
# Alter the code so that successive ticks are sent to each registered client
# (so the first goes to the first client, the second to the next client, and so
# on). Once the last client receives a tick, the process starts back at the
# first. The solution should deal with new clients being added at any time.

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
        generator([pid | clients], n)
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
    pid = spawn(__MODULE__, :receiver, [1])
    Ticker.register(pid)
  end

  def receiver(n) do
    receive do
      {:tick, pid} ->
        # IO.puts "tock in client"
        IO.puts("tock in client ID: #{String.replace(inspect(pid), ["#", "<", ">", "PID"], "")} - #{n}")
        receiver(n + 1)
    end
  end
end

# Exercise: Nodes-4
# The ticker process in this chapter is a central server that sends events to
# registered clients. Reimplement this as a ring of clients. A client sends a
# tick to the next client in the ring. After 2 seconds, that client sends a tick
# to its next client.
# When thinking about how to add clients to the ring, remember to deal
# with the case where a client’s receive loop times out just as you’re adding
# a new process. What does this say about who has to be responsible for
# updating the links?

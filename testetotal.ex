[ 1, 2, 3, 4, 5 ]                                           # [1, 2, 3, 4, 5]
    |> Enum.map(&(&1*&1))                                   # [1, 4, 9, 16, 25]
    |> Enum.with_index                                      # [{1, 0}, {4, 1}, {9, 2}, {16, 3}, {25, 4}]
    |> Enum.map(fn {value, index} -> value - index end)     # [1 - 0, 4 - 1, 9 - 2, 16 - 3, 25 - 4]     # [1, 3, 7, 13, 21]
    |> IO.inspect                                           # [1, 3, 7, 13, 21]

    [1,2,3,4]
    |> Stream.map(&(&1*&1))
    |> Stream.map(&(&1+1))
    |> Stream.filter(fn x -> rem(x,2) == 1 end)
    |> Enum.to_list
    |> IO.inspect

[1, 2, 3, 4, 5, 7] |> Enum.map(&(&1)) |> IO.inspect

# IO.inspect(Enum.map(32..126, ))
for letr <- 0..55295 do
    IO.puts("#{letr} -> #{[letr]}")
end

  # Unicode "\u0020" até "\u9999" ?

defmodule MyList do

    def len1([]), do: 0
    def len1([_head | tail]), do: 1 + len1(tail)

    def square([]), do: []
    def square([ head | tail]), do: [head * head | square(tail)]

    def add_1([]), do: []
    def add_1([ head | tail ]), do: [head+1 | add_1(tail)]

    def map([], _func), do: []
    def map([ head | tail ], func), do: [ func.(head) | map(tail, func)]

    def sum([], total), do: total
    def sum([ head | tail], total), do: sum(tail, head+total)

    def sum1(list), do: _sum1(list, 0)
    defp _sum1([], total), do: total # função privada
    defp _sum1([ head | tail ], total), do: _sum1(tail, head+total)
end

IO.inspect(MyList.len1([1, 2, 3, 4]))


defmodule MyList do
    def map([], _func), do: []
    def map([ head | tail ], func), do: [ func.(head) | map(tail, func)]
    #Recebe valores e uma função
  end

  #MyList.map [1, 2, 3, 4], fn (n) -> n/2 end

defmodule MyList do
	def add_1([]), do: []
	def add_1([ head | tail ]), do: [head+1 | add_1(tail)]
end

"""
[1, 2, 3, 4, 5]

Verifica se vázio, faça vázio.
[ head | tail ]
hed = 1
tail = [2, 3, 4, 5]
"""

defmodule Tudo do
  def imprime([]), do: []
  def imprime([head = [_, _, 5, _] | tail]) do
    IO.inspect(head)
    imprime(tail)
  end
  def imprime([_ | tail]), do: imprime(tail)
end

test2 = [[6, 7, 8, 9],
[5, 6, 7, 8],
[4, 5, 6, 7],
[3, 4, 5, 6],
[2, 3, 5, 5],
[1, 2, 3, 4]
]

Tudo.imprime(test2)

defmodule Parallel do
  def pmap(collection, fun) do
    me = self()

    collection
    |> Enum.map(fn elem ->
      spawn_link(fn -> send(me, {self(), fun.(elem)}) end)
    end)
    |> Enum.map(fn pid ->
      receive do
        {^pid, result} -> result
      end
    end)
  end
end

defmodule NormalFun do
  def test1(list, fun) do
    list
    |> Enum.map(fn elem -> fun.(elem) end)
  end
end

Enum.each(1..10, fn _ ->
{time, _} = :timer.tc(Parallel, :pmap, [1..1000, &(&1 > 50)])
IO.puts("Time: #{time}") end
)
IO.puts("")

Enum.each(1..10, fn _ ->
  {time, _} = :timer.tc(NormalFun, :test1, [1..1000, &(&1 > 50)])
  IO.puts("Time: #{time}") end
)

#########################################################################
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
      send(:global.whereis_name(@name), {:register, client_pid, Node.self()})
    rescue
      ArgumentError -> "Tick not found!!!"
    end
  end

  def generator(clients, n) do
    receive do
      {:register, pid, node_self} ->
        IO.puts("registering #{inspect(pid)}")
        Process.monitor(pid)
        [node_self, _] = Atom.to_string(node_self) |> String.split("@")
        clients = [{pid, node_self} | clients]
        generator(clients, length(clients) - 1)

      {_, _, _, pid_error, :noconnection} ->
        IO.puts("unregistering client #{inspect(pid_error)}")
        # clients = List.delete(clients, {pid_error, _})
        clients = Enum.reject(clients, fn {pid, _no} -> pid == pid_error end)
        generator(clients, length(clients) - 1)
        send(pid, {:tick, pid})
      after
      @interval ->
        n = if n < 0, do: length(clients) - 1, else: n

        if clients == [] do
          IO.puts("Waiting client for tick")
        else
          {pid, no} = Enum.at(clients, n)
          IO.puts("tick client name: #{no} ID: #{String.replace(inspect(pid), ["#", "<", ">", "PID"], "")}")
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
        [node_s, _] = Atom.to_string(Node.self) |> String.split("@")
        IO.puts("tock in client name: #{node_s} ID: #{String.replace(inspect(pid), ["#", "<", ">", "PID"], "")}")
        receiver()
    end
  end
end

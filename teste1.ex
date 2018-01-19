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
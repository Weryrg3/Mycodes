defmodule MyList do
  def sum(list), do: _sum(list, 0)

  defp _sum([], total), do: total # função privada
  defp _sum([ head | tail ], total), do: _sum(tail, head+total)
end

#MyList.sum([1, 2, 3, 4])


# Exercício: ListsAndRecursion-0
# Eu definei nossa função de soma para carregar um total parcial como um segundo parâmetro
# então eu poderia ilustrar como usar acumuladores para criar valores. A soma
# A função também pode ser escrita sem um acumulador. Consegues fazê-lo?

defmodule MyList do
  def sum(list), do: _sum(list, 0)
  # private methods
  defp _sum([], total), do: total
  defp _sum([head | tail], total), do: _sum(tail, head + total)

  def soma([]), do: 0
  def soma([head | tail]) do
    head + soma(tail)
  end
end

IO.inspect(MyList.sum([1, 2, 3]))
IO.inspect(MyList.soma([1, 2, 3]))
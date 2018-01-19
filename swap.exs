defmodule Swapper do
  def swap([]), do: []
  def swap([a, b | tail]), do: [b, a | swap(tail)]
  def swap([_]), do: raise "Swap não funciona com impares numeros"
end

IO.inspect(Swapper.swap [1, 2, 3, 4])
#IO.inspect(Swapper.swap [1, 2, 3, 4, 5])

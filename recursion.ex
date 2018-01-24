defmodule Tudo do
  def soma([]), do: 0
  def soma([head | tail]), do: head + soma(tail)

  def mult([]), do: 1
  def mult([head | tail]), do: head * mult(tail)

  def tamanho([]), do: 0
  def tamanho([_head | tail]), do: 1 + tamanho(tail)

  def media([]), do: 1
  def media([head | tail]) do
    
  end
end

#IO.inspect(Tudo.soma([1, 2, 3, 4]))
#IO.inspect(Tudo.mult([1, 2, 3, 4]))
#IO.inspect(Tudo.tamanho([1, 2, 3, 4]))
IO.inspect(Tudo.media([1, 2, 3, 4]))

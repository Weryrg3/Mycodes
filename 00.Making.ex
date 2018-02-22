defmodule Calc do

  def soma_lista([]), do: []
  def soma_lista([n]), do: n

  def soma_lista([head | tail]) do
    head + soma_lista(tail)
  end
end
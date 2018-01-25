defmodule Utf8 do
  def each0(str, func) when is_binary(str), do: each1(str, func)
  def each1(<<head :: utf8, tail :: binary >>, func) do
    func.(head)
    each1(tail, func)
  end
  def each1(<<>>, _func), do: []
end

Utf8.each0("❤ ∂ casa", &(IO.puts/1))
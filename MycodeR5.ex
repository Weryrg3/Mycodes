# defmodule Times do
#   def double(n), do: n * 2
# end

defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: double(double(n))   # double(double(n)) = (2 * (n * 2))
end

IO.puts(Times.double(10))
IO.puts(Times.triple(10))
IO.puts(Times.quadruple(10))
#Pág 49
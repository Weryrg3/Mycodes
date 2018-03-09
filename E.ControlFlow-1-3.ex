# Your Turn
# ➤ Exercise: ControlFlow-1
# Rewrite the FizzBuzz example using case.

defmodule ControlFlow0 do
  def loop(number), do: fizz_buzz(number, 0)
  defp fizz_buzz(0, _), do: nil
  defp fizz_buzz(number, count) do
    rest = {rem(count, 3), rem(count, 5)}
    fizz_buzz = case rest do
       {0, 0} -> "FizzBuzz"
       {0, _} -> "Fizz"
       {_, 0} -> "Buzz"
       {_, _} -> count
    end
    IO.puts("#{count} -> #{fizz_buzz}")
    fizz_buzz(number-1, count+1)
  end

end

#IO.inspect(ControlFlow0.loop(5))
#IO.inspect(ControlFlow0.loop(3))
ControlFlow0.loop(11)


# ➤ Exercise: ControlFlow-2
# função Partned Matched

# ➤ Exercise: ControlFlow-3
# Many built-in functions have two forms. The xxx form returns the tuple
# {:ok, data} and the xxx! form returns data on success but raises an exception
# otherwise. However, some functions don’t have the xxx! form.
# Write an ok! function that takes an arbitrary parameter. If the parameter
# is the tuple {:ok, data} , return the data. Otherwise, raise an exception
# containing information from the parameter.
# You could use your function like this:
# file = ok! File.open("somefile")

defmodule ControlFlow2 do #ControlFlow3
  def ok!({:ok, file}), do: IO.read(file, :all) |> IO.puts()
  def ok!({:error, error}), do: raise "Error function #{error}" #IO.puts("Error function: #{error}")
  def ok!(error), do: IO.puts("Error function: #{error}") # or raise
end

# file = ok! File.open("somefile")

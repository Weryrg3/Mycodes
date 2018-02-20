defmodule Shop do
  result =
    with {quantity, _} <- ask_number("Quantity?"),
         {price, _} <- ask_number("Price?") do
      quantity * price
    else
      :error ->
        IO.puts("It's not a number")
    end

  # if result == :error, do: IO.puts("It's not a number"), else: result
end

# defmodule Shop do
#   def checkout() do
#     quantity = ask_number("Quantity?")
#     price = ask_number("Price?")
#     calculate(quantity, price)
#   end

#   defp calculate(:error, _), do: IO.puts("Quantity is not a number")
#   defp calculate(_, :error), do: IO.puts("Price is not a number")
#   defp calculate({quantity, _}, {price, _}), do: quantity * price

#   defp ask_number(message) do
#     message <> "\n"
#       |> IO.gets()
#       |> Integer.parse()
#   end
# end

# Página inicial 143 -> Learn
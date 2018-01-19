### Span in other exercice
defmodule MyList do
  def span(n1, n2) when n1 > n2, do: []
  def span(n1, n2), do: [n1 | span(n1 + 1, n2)]
end

### Exercice lost 0 (one)
# IO.inspect(MyList.span(2, 8))

defmodule Primos do
  def prime(n) do
    for x <- MyList.span(2, n),
        divisores = MyList.span(2, x - 1),
        Enum.all?(divisores, &(rem(x, &1) != 0)),
        do: x
  end
end

# IO.inspect(Primos.prime(7))

# Pág 110 Exercicio 8

# defmodule Price do
# end

defmodule Exercicio do
  def exercicio(orders, tax_rates) do
    Enum.map(orders, fn order ->
      total_amount = 0

      if(order[:ship_to] == :NC or order[:ship_to] == :TX)

      Keyword.has_key?(tax_rates, order[:ship_to])

      Keyword.put(order, :total_amount, total_amount)
    end)
  end
end

tax_rates = [NC: 0.075, TX: 0.08]

orders = [
  # 100.00 + (100.00 * 0.075)
  [id: 123, ship_to: :NC, net_amount: 100.00],
  [id: 124, ship_to: :OK, net_amount: 35.50],
  # 24.00 + (24.00 * 0.08)
  [id: 125, ship_to: :TX, net_amount: 24.00],
  [id: 126, ship_to: :TX, net_amount: 44.80],
  [id: 127, ship_to: :NC, net_amount: 25.00],
  [id: 128, ship_to: :MA, net_amount: 10.00],
  [id: 129, ship_to: :CA, net_amount: 102.00],
  [id: 130, ship_to: :NC, net_amount: 50.00]
]

# Keyword.put(orders)
IO.inspect(tax_rates)

new_orders = Exercicio.exercicio(orders, NC: 0.075, TX: 0.08, MA: 0.10)
IO.inspect(new_orders)

new_orders = Exercicio.exercicio(orders, NC: 0.075, MA: 0.12, OK: 0.05)
IO.inspect(new_orders)

# Enum.map(orders, Keyword.put(orders, key, value))

# order = [id: 123, ship_to: :TX, net_amount: 100.00]

# keyword = order
# key = :ship_to
# Keyword.has_key?(keyword, key)

# keyword = order
# key = order[:ship_to]
# Keyword.has_key?(keyword, key)

# Keyword.has_key?(order, order[:ship_to])
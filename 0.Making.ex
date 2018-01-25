defmodule Exercicio do
  def exercicio(orders, tax_rates) do
    Enum.map(orders, fn order ->

      if Keyword.has_key?(tax_rates, order[:ship_to]) do
        #[tax_rate | _] = for {tax, value} <- tax_rates, tax == order[:ship_to], do: value 
        tax_rate = tax_rates[order[:ship_to]]
        Keyword.put(order, :total_amount, order[:net_amount] * (1 + tax_rate))
      else
        Keyword.put(order, :total_amount, order[:net_amount])
      end
    end)
  end
end

# orders = 

tax_rates = [NC: 0.075, TX: 0.08]
IO.inspect(Exercicio.exercicio(orders, tax_rates))
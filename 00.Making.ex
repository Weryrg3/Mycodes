defmodule Exercicio do
  def exercicio(orders, tax_rates) do
    Enum.map(orders, fn order ->
      if Keyword.has_key?(tax_rates, order[:ship_to]) do
        # [tax_rate | _] = for {tax, value} <- tax_rates, tax == order[:ship_to], do: value 
        tax_rate = tax_rates[order[:ship_to]]
        Keyword.put(order, :total_amount, order[:net_amount] * (1 + tax_rate))
      else
        Keyword.put(order, :total_amount, order[:net_amount])
      end
    end)
  end
end

defmodule Arquivo do
  def allowed_states() do
    [:NC, :OK, :TX, :MA, :CA]
  end
  def arquivo0({:error, _}), do: []

  def arquivo0({:ok, file}) do
    IO.read(file, :line)
    arquivo1(IO.read(file, :line), file)
  end

  def arquivo1(:eof, file) do
    File.close(file)
    []
  end

  def arquivo1(string, file) do
    [id, ship_to, net_amount] = 
      string 
      |> String.trim() 
      |> String.split(",")

    id = String.to_integer(id)

    ship_to =
      ship_to 
      |> String.trim_leading(":")
      |> String.to_existing_atom()

    net_amount = String.to_float(net_amount)

    order =
      Keyword.new() 
      |> Keyword.put(:id, id) 
      |> Keyword.put(:ship_to, ship_to)
      |> Keyword.put(:net_amount, net_amount)

    [order | arquivo1(IO.read(file, :line), file)]
  end
end

orders = Arquivo.arquivo0(File.open("orders.txt", [:read]))
IO.inspect(orders)
tax_rates = [NC: 0.075, TX: 0.08]
IO.inspect(Exercicio.exercicio(orders, tax_rates))
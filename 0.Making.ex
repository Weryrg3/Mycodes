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
  def arquivo0({:error, _}), do: []

  def arquivo0({:ok, file}) do
    arquivo1(IO.read(file, :line), file)
  end

  def arquivo1(:eof, _file) do
    []
  end

  def arquivo1(string, file) do
    order = [id: 0, ship_to: :Null, net_amount: 0.0]
    list_order = string |> String.split(",")

    list_order = List.replace_at(list_order, 0, Enum.at(list_order, 0) 
      |> String.to_integer())
    
    list_order = List.replace_at(list_order, 1, Enum.at(list_order, 1) 
      |> String.next_codepoint() 
      |> Tuple.to_list() 
      |> Enum.at(1) 
      |> String.to_atom()) 
    
    list_order = List.replace_at(list_order, 2, Enum.at(list_order, 2) 
      |> String.trim() 
      |> String.to_float())

    order = Keyword.put(order, :id, Enum.at(list_order, 0))
    order = Keyword.put(order, :ship_to, Enum.at(list_order, 1))
    order = Keyword.put(order, :net_amount, Enum.at(list_order, 2))

    [order | arquivo1(IO.read(file, :line), file)]
  end
end

orders = Arquivo.arquivo0(File.open("orders.txt", [:read]))
IO.inspect(orders)
#tax_rates = [NC: 0.075, TX: 0.08]
#IO.inspect(Exercicio.exercicio(orders, tax_rates))
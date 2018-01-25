# Pág 119 Livro 1.3
# ➤ Exercise: StringsAndBinaries-1
defmodule Printavel do
  def print(text) do
    # As chars printaveis de uma tabela ASCII estão entre 32 e 126
    Enum.all?(text, fn x -> x > 31 and x < 127 end)
  end
end

IO.inspect(Printavel.print('ABcDeF'))
IO.inspect(Printavel.print('\nadfeg'))
##############################################################################################
# Pág 119 Livro 1.3
# ➤ Exercise: StringsAndBinaries-2
defmodule Anagram do
  def anagram(word1, word2) do
    Enum.sort(word1) == Enum.sort(word2)
  end
end

IO.puts(Anagram.anagram('casa', 'asac'))
##############################################################################################
# Pág 119 Livro 1.3
# ➤ Exercise: StringsAndBinaries-3
# Try the following in iex:
# iex> [ 'cat' | 'dog' ]
# ['cat',100,111,103]
# Why does iex print 'cat' as a string, but 'dog' as individual numbers?
##############################################################################################
# Pág 119 Livro 1.3
# ➤ Exercise: StringsAndBinaries-4
defmodule Calc do
  def calculate(text) do
    [n1, op, n2] =
      text
      |> to_string
      |> String.split([" "])

    [n1, n2] = Enum.map([n1, n2], &String.to_integer(&1))

    case op do
      "+" -> n1 + n2
      "-" -> n1 - n2
      "*" -> n1 * n2
      "/" -> n1 / n2
      outro -> "Operador #{outro} não reconhecido"
    end
  end
end

# => 150
IO.inspect(Calc.calculate('123 + 27'))
IO.inspect(Calc.calculate('123 - 23'))
IO.inspect(Calc.calculate('125 * 2'))
IO.inspect(Calc.calculate('124 / 2'))
IO.inspect(Calc.calculate('124 \ 2'))
##############################################################################################
# Pág 126 Livro 1.3
# ➤ Exercise: StringsAndBinaries-5
defmodule Texto do
  def center(palavras) do
    # for x <- lista , do: IO.puts(String.duplicate " ", div(String.length(Enum.max_by lista, &String.length/1), String.length(x) <> x))
    max_size = palavras |> Enum.map(&String.length/1) |> Enum.max()

    for palavra <- palavras do
      tamanho_esp = div(max_size - String.length(palavra), 2)
      espacos = String.duplicate(" ", tamanho_esp)
      IO.puts(espacos <> palavra)
    end
  end
end

# IO.puts(lista) |>  Enum.each(lista)
Texto.center(["cat", "zebra", "elephant"])
##############################################################################################
# Pág 127 Livro 1.3
# ➤ Exercise: StringsAndBinaries-6
defmodule Total do
  def capitalize(string) do
    # Pega String e transforma em lista
    lista = String.split(string, ". ")
    # Pega List e tranforma em String novamente
    Enum.join(list(lista), ". ")
  end

  defp list([]), do: []

  defp list([head | tail]) do
    # Pega String separada Ex: DOG, passa a ser dog e depois Dog
    [String.capitalize(String.downcase(head)) | list(tail)]
  end
end

IO.inspect(Total.capitalize("oh. a DOG. woof. "))
IO.inspect(Total.capitalize("CASA. a DoG. Um HaTeR. "))
# iex> capitalize_sentences("oh. a DOG. woof. ")
# "Oh. A dog. Woof. "
##############################################################################################
# Pág 127 Livro 1.3
# ➤ Exercise: StringsAndBinaries-7

# Necessita do module Execercicio E.ListsAndRecursion-0-8
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

    list_order = List.replace_at(list_order, 0, Enum.at(list_order, 0) |> String.to_integer())
    list_order = List.replace_at(list_order, 1, Enum.at(list_order, 1) |> String.next_codepoint() |> Tuple.to_list() |> Enum.at(1) |> String.to_atom()) 
    list_order = List.replace_at(list_order, 2, Enum.at(list_order, 2) |> String.trim() |> String.to_float())

    order = Keyword.put(order, :id, Enum.at(list_order, 0))
    order = Keyword.put(order, :ship_to, Enum.at(list_order, 1))
    order = Keyword.put(order, :net_amount, Enum.at(list_order, 2))

    [order | arquivo1(IO.read(file, :line), file)]
  end
end

orders = Arquivo.arquivo0(File.open("orders.txt", [:read]))
IO.inspect(orders)
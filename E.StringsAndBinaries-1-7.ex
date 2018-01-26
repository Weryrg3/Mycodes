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
# ------------ Porque 'cat', está sendo interpetrado como um elemento, logo 'dog' como uma lista
# o que faz essa separação é o pipe | que transforma o primeiro em um elemento e resto em lista
# algo como [head | tail], o oposto é a mesma coisa ['dog' | 'cat']
# ['dog', 99, 97, 116]
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
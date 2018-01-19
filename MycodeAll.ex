defmodule Teste1 do
  def lista([]), do: []
  def lista([head | tail]), do: [head + head | lista(tail)]
end

IO.inspect(Teste1.lista([1, 2, 3, 4]))

defmodule MyList do
  def span(n1, n2) when n1 > n2, do: []
  def span(n1, n2), do: [n1 | span(n1 + 1, n2)]
end

IO.inspect(MyList.span(2, 8))  #Para primos funcionar.

# Code.require_file("./Mycode2.ex")

# Pág 110 PDF
defmodule Primos do
  def prime(n) do
    for x <- MyList.span(2, n),
        divisores = MyList.span(2, x - 1),
        Enum.all?(divisores, &(rem(x, &1) != 0)),
        do: x
  end
end

IO.inspect(Primos.prime(7))

defmodule Anagram do
  def anagram(word1, word2) do
    Enum.sort(word1) == Enum.sort(word2)
  end
end

IO.puts(Anagram.anagram('casa', 'asac'))

defmodule Printavel do
  def print(text) do
    # As chars printaveis de uma tabela ASCII estão entre 32 e 126
    Enum.all?(text, fn x -> x > 31 and x < 127 end)
  end
end

IO.inspect(Printavel.print('ABcDeF'))
IO.inspect(Printavel.print('\nadfeg'))

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
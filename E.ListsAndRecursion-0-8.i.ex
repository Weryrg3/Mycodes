# ListsAndRecursion-0
# Pág 72  Livro 1.3

defmodule MyList0 do
  def sum(list), do: _sum(list, 0)
  # private methods
  defp _sum([], total), do: total
  defp _sum([head | tail], total), do: _sum(tail, head + total)

  def soma([]), do: 0

  def soma([head | tail]) do
    head + soma(tail)
  end
end

#IO.inspect(MyList0.sum([1, 2, 3]))
#IO.inspect(MyList0.soma([1, 2, 3]))
#########################################################################################

# Pág 73 Livro 1.3
defmodule MyList1 do
  def mapsum([], _fun), do: 0
  def mapsum([head | tail], fun), do: fun.(head) + mapsum(tail, fun)

  def maior([n]), do: n

  def maior([head | tail]) do
    maior_tail = maior(tail)
    # 
    if maior_tail > head do
      maior_tail
    else
      head
    end
  end

  def caesar([], _number), do: []

  def caesar([head | tail], number) do
    if head + number > 122 do
      # Tamanho da char_list
      tamanho = [head | tail] |> List.to_string() |> String.length()
      # ?????
      interrogacao = String.duplicate("?", tamanho)
      "#{interrogacao} :)"
    else
      [head + number | caesar(tail, number)]
    end
  end
end

# IO.inspect(MyList1.mapsum([1, 2, 3], &(&1 * &1)))
# IO.inspect(MyList1.maior([6, 4, 7, 3, 2, 1]))
#IO.inspect(MyList1.caesar('abcdegfsg', 97))
#IO.inspect(MyList1.caesar('abcde', 10))
# ?????? :)
#########################################################################################

# Pág 76 Livro 1.3
defmodule MyList2 do
  def span(n1, n2) when n1 > n2, do: []
  def span(n1, n2), do: [n1 | span(n1 + 1, n2)]
end

# IO.inspect(MyList2.span(2, 8))

#########################################################################################
# Pág 98 Livro 1.3
# Exercise: ListsAndRecursion-5
defmodule Enum1 do
  def all([]), do: true

  def all([head | tail]) do
    if head == nil do
      false
    else
      all(tail)
    end
  end

  def all([], _fun), do: true

  def all([head | tail], fun) do
    if fun.(head) == false do
      false
    else
      all(tail, fun)
    end
  end

  def each1([], _fun), do: :ok

  def each1([head | tail], fun) do
    fun.(head)
    each1(tail, fun)
  end

  def filter([], _fun), do: []

  def filter([head | tail], fun) do
    if fun.(head) == true do
      [head | filter(tail, fun)]
    else
      filter(tail, fun)
    end
  end

  def take1([], _number), do: []

  def take1([head | tail], number) do
    if number > 0 do
      [head | take1(tail, number - 1)]
    else
      []
    end
  end

  def split1([], _), do: {[], []}
  def split1(lista, 0), do: {[], lista}

  def split1([head | tail], number) when number > 0 do  # verificar função split1 depois
    {list1, list2} = split1(tail, number - 1)
    {[head | list1], list2}
  end

  def split1([head | tail], number) when number < 0 do
    {list1, list2} = split1(tail, count(tail) + number)
    {[head | list1], list2}
  end

  def count([]), do: 0

  def count([_head | tail]) do
    1 + count(tail)
  end
end

# Fim module Enum1

#IO.inspect(Enum1.split1([1, 2, 3, 4, 5, 6, 7], 3))
#IO.inspect(Enum1.split1([1, 2, 3, 4, 5, 6, 7, 8], -3))

# all? /1 um argumento
# IO.inspect(Enum1.all([1, nil, 3]))
# IO.inspect(Enum1.split1([1, 2, 3, 4, 5], 2))
# IO.inspect(Enum1.take1([1, 2, 3, 4, 5, 6], 5))

# IO.inspect(Enum1.split1([3, 4], 0) == {[], [3, 4]})
# IO.inspect(Enum1.split1([], 2) == {[], []})

# IO.inspect(Enum1.split1([1, 2], 3) == {[1,2], []})
#IO.inspect(Enum1.split1([1, 2, 3, 4], 3))
# IO.inspect(Enum1.split1([1, 2, 3, 4], 2) == {[1, 2], [3, 4]})
# IO.inspect(Enum1.split1([2, 3, 4], 1) == {[2], [3, 4]})
# IO.inspect(Enum1.split1([3, 4], 0) == {[], [3, 4]})
# IO.inspect()
#########################################################################################
# Pág 98 Livro 1.3
# ➤ Exercise: ListsAndRecursion-6
defmodule Test do
  def flatten1([]), do: []

  def flatten1([head | tail]) when is_list(head) do
    [head1 | tail1] = head

    if is_list(head1) do
      [head2 | tail2] = flatten1(head1)
      [head2 | flatten1(tail1) ++ flatten1(tail2) ++ flatten1(tail)]
    else
      [head1 | flatten1(tail1) ++ flatten1(tail)]
    end
  end

  def flatten1([head | tail]) when not is_list(head) do
    [head | flatten1(tail)]
  end
end

#IO.inspect(Test.flatten1([1, [2, 3, [4]], 5, [[[6]]]]))
#IO.inspect(Test.flatten1([1, [2, [[[3]]], [4]], [[[[[[[[[[5]]]]]]]]]], [6]]))
#IO.inspect(Test.flatten1([[1], [2], [3], [4]]))
#IO.inspect(Test.flatten1([1, 2, 3, [[[[4]]]]]))
#########################################################################################

# Pág 110 Livro 1.3
# ➤ Exercise: ListsAndRecursion-7
defmodule Primos do
  def prime(n) do
    for x <- MyList2.span(2, n),
        divisores = MyList2.span(2, x - 1),
        Enum.all?(divisores, &(rem(x, &1) != 0)),
        do: x
  end
end

# IO.inspect(Primos.prime(7))
#########################################################################################
# Pág 110 Livro 1.3
# Incomplete_________________________________________________________________
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
#IO.inspect(tax_rates)

new_orders = Exercicio.exercicio(orders, NC: 0.075, TX: 0.08, MA: 0.10)
#IO.inspect(new_orders)

new_orders = Exercicio.exercicio(orders, NC: 0.075, MA: 0.12, OK: 0.05)
#IO.inspect(new_orders)

# Enum.map(orders, Keyword.put(orders, key, value))

# order = [id: 123, ship_to: :TX, net_amount: 100.00]

# keyword = order
# key = :ship_to
# Keyword.has_key?(keyword, key)

# keyword = order
# key = order[:ship_to]
# Keyword.has_key?(keyword, key)

# Keyword.has_key?(order, order[:ship_to])
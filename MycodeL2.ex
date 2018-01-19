# • Write two recursive functions: one that finds the biggest element of a list,
# and another that finds the smallest. You should use them like this:
# MyList.max([4, 2, 16, 9, 10])
# # => 16
# MyList.min([4, 2, 16, 9, 10])
# # => 2
defmodule MyList do
  def max([n]), do: n

  def max([head | tail]) do
    max_tail = max(tail)

    if head > max_tail do
      head
    else
      max_tail
      # max(tail)
    end
  end

  def min([n]), do: n

  def min([head | tail]) do
    min_tail = min(tail)

    if head < min_tail do
      head
    else
      min_tail
    end
  end
end

IO.inspect(MyList.max([4, 2, 16, 9, 10]))
# IO.inspect(MyList.max([22, 18, 16, 11, 10]))
IO.inspect(MyList.min([4, 2, 16, 9, 10]))

# • Na seção Transforming Lists, na página 62, viajamos para uma fantasia
# mundo e encantou alguns itens. Crie um novo módulo chamado GeneralStore
# onde você pode criar uma função que filtre se os produtos são mágicos ou não. 
# Você pode usar os mesmos dados de teste do EnchanterShop. Para exemplo:

defmodule GeneralStore do
  def filter_items([], _), do: []

  def filter_items([head | tail], keyword) do
    if head[:magic] == keyword[:magic] do
      [head | filter_items(tail, keyword)]
    else
      filter_items(tail, keyword)
    end
  end

  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing potion", price: 60, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true}
    ]
  end
end

IO.inspect(GeneralStore.filter_items(GeneralStore.test_data(), %{magic: true}))
# => [%{title: "Healing potion", price: 60, magic: true},
# %{title: "Dragon's Spear", price: 100, magic: true}]
IO.inspect(GeneralStore.filter_items(GeneralStore.test_data(), %{magic: false}))
# => [%{title: "Longsword", price: 50, magic: false},
# %{title: "Rope", price: 10, magic: false}]

# • We have created a function that sorts the items of a list in ascending
# order. Now create a Sort.descending/1 function that sorts the elements in
# descending order.

defmodule Sort do
  def ascending([]), do: []
  def ascending([a]), do: [a]

  def ascending(list) do
    half_size = div(Enum.count(list), 2)
    {list_a, list_b} = Enum.split(list, half_size)

    merge(
      # [4, 5]
      ascending(list_a),
      # [3, 2]
      ascending(list_b)
    )
  end

  defp merge([], list_b), do: list_b
  defp merge(list_a, []), do: list_a

  defp merge([head_a | tail_a], list_b = [head_b | _]) when head_a > head_b do
    [head_a | merge(tail_a, list_b)]
  end

  defp merge(list_a = [head_a | _], [head_b | tail_b]) when head_a <= head_b do
    [head_b | merge(list_a, tail_b)]
  end
end

IO.inspect(Sort.ascending([3, 2, 5, 4, 0]))

# • We have written a lot of recursive functions, but not all of them are tail
# recursive. Write the tail recursive versions of Sum.up_to/1 and Math.sum/1 .
# Extra challenge: write the tail recursive version of Sort.merge/2 .


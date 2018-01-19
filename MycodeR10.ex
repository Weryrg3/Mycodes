# ➤ Exercício: ListasAndRecursão-1
# Escreva uma função mapsum que tenha uma lista e uma função. Aplica o
# funcionar para cada elemento da lista e, em seguida, somar o resultado, então
# iex> MyList.mapsum [1, 2, 3], & (& 1 * & 1)
# 14
# ➤ Exercício: ListasAndRecursão-2
# Escreva um max (lista) que retorna o elemento com o valor máximo no
# Lista. (Isso é um pouco mais complicado do que parece.)
# ➤ Exercício: ListasAndRecursão-3
# Um elixir single-quoted string é, na verdade, uma lista de personagem individual
# códigos. Escreva uma função Caesar (lista, n) que adiciona n a cada elemento da lista,
# envolvendo se a adição resultar em um caractere maior que z.
# iex> MyList.caesar ('ryvkve', 13)
# ?????? :)

defmodule MyList do
  # def map([], _fun), do: []
  # def map([head | tail], fun), do: [fun.(head) | map(tail, fun)]

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
    
    if (head + number) > 122 do
       tamanho = [head | tail ] |> List.to_string() |> String.length    #Tamanho da char_list
       interrogacao = String.duplicate("?", tamanho)           # ?????
       "#{interrogacao} :)"
    else
       [head + number | caesar(tail, number)]
    end
  end

end


#IO.inspect(MyList.mapsum([1, 2, 3], &(&1 * &1)))
#IO.inspect(MyList.maior([6, 4, 7, 3, 2, 1]))
IO.inspect(MyList.caesar('abcdegfsg', 97))
IO.inspect(MyList.caesar('abcde', 10))
# ?????? :)
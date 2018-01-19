#

defmodule Tudo do 
    def test1([]), do: []                                   #0-1_Médio
    def test1([head | tail]), do: [head * head | test1(tail)]

    def test2(t1 \\ 4, t2 \\ 3, t3 \\ 2, t4 \\ 1), do: [t1, t2, t3, t4]

    def test3(p, u), do: (p .. u) |> Enum.map(&(&1))        #1-1_Médio

    def test4([], _fun), do: []
    def test4([head | tail], fun), do: [fun.(head) | test4(tail, fun)]  #2-1_Médio

    def test5(lista), do: Enum.join(lista, " ")

    def test6(p, u), do: Enum.into p .. u, []               #1-2_Simplificado
    
    def test7(lista), do: for x <- lista, do: x * x         #0-2_Simplificado

    def test8(lista, fun), do: for x <- lista, do: fun.(x)  #2-2_Simplificado
    
    def test9(lista1, lista2, fun), do: for x <- lista1, y <- lista2, do: fun.(x, y)

    def test10(lista), do: for x <- lista, do: String.upcase(x)
end

IO.inspect(Tudo.test1([1, 2, 3, 4]))
IO.inspect(Tudo.test2(1))
IO.inspect(Tudo.test3(1, 10))
IO.inspect(Tudo.test4([1, 4, 6, 8], &(&1 / 2)))
IO.inspect(Tudo.test5([1, 4, 6, 8]))
IO.inspect(Tudo.test6(1, 10))
IO.inspect(Tudo.test7([1, 2, 3, 4]))
IO.inspect(Tudo.test8([1, 4, 6, 8], &(&1 / 2)))
IO.inspect(Tudo.test9([1, 4], [1, 4], &(&1 * &2)))
IO.inspect(Tudo.test10(["Wesley", "Eficiência", "Fiscal", "test"]))

# test1([head | tail]), do: [head | test1(tail)]                    # [1, 4, 9, 16]
# test2(t1 \\ 4, t2 \\ 3, t3 \\ 2, t4 \\ 1), do: [t1, t2, t3, t4]   # [1, 3, 2, 1]
# test3(p, u), do: (p .. u) |> Enum.map(&(&1))                      # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# test4([head | tail], fun), do: [fun.(head) | test4(tail, fun)]    # [0.5, 2.0, 3.0, 4.0]
# test5(lista), do: Enum.join(lista, " ")                           # "1 4 6 8"
# test6(p, u), do: Enum.into p .. u, []                             # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# test7(lista), do: for x <- lista, do: x * x                       # [1, 4, 9, 16]
# test8(lista, fun), do: for x <- lista, do: fun.(x)                # [0.5, 2.0, 3.0, 4.0]
# test9(lista1, lista2, fun), do: for x <- lista1, y <- lista2, do: fun.(x, y) # [1, 4, 4, 16]
# test10(lista), do: for x <- lista, do: String.upcase(x)           # ["WESLEY", "EFICIÊNCIA", "FISCAL", "TEST"]
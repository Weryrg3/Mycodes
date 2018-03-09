defmodule MyList do
    # def sum([]), do: 0
    # def sum([head | tail]), do: head + sum(tail)

    def map([], _fun), do: []
    def map([head | tail], fun), do: [fun.(head) | map(tail, fun)]

    # def mapsum(lista, fun ) do
    #     lista_a = map(lista, fun)
    #     sum(lista_a)
    # end

    def mapsum([], _fun), do: 0     
    def mapsum([head | tail], fun), do: fun.(head) + mapsum(tail, fun) #Lista sempre deve retornar uma lista
end

# f = fn x -> to_string(x) end
# f = &(to_string(&1))
# f = &to_string/1
# IO.inspect(MyList.map([1, 2, 3], f))


# f() |> g() == g(f())

# sum(map(lista, fun)) == lista |> map(fun) |> sum()

# @nome 
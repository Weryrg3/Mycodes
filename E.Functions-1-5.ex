#########################################################################################
# Página 39 Livro 1.3 

# list_concat.([:a, :b], [:c, :d]) #=> [:a, :b, :c, :d]
# sum.(1, 2, 3) #=> 6
# pair_tuple_to_list.( { 1234, 5678 } ) #=> [ 1234, 5678 ]

list_concat = fn x, y -> x ++ y end
#list_concat = fn [a, b], [c, d] -> [a, b, c, d] end
IO.inspect(list_concat.([:a, :b], [:c, :d]))

sum = fn x, y, z -> x + y + z end
IO.inspect(sum.(1, 2, 3))

pair_tuple_to_list = fn {x, y} -> [x, y] end
IO.inspect(pair_tuple_to_list.({1234, 5678}))

# IO.inspect()

#########################################################################################
# Pág 41 Livro 1.3  

tres = fn 
  0, 0, _c -> "FizzBuzz"
  0, _b, _c -> "Fizz"
  _a, 0, _c -> "Buzz"
  _, _, c -> "#{c}"

end

#IO.inspect(tres.(1, 1, 3))

resto = fn n -> tres.(rem(n, 3), rem(n, 5), n) end

IO.inspect( resto.(10) <> ", " <> resto.(11) <>
    ", " <> resto.(12) <> ", " <> resto.(13) <>
    ", " <> resto.(14) <> ", " <> resto.(15) <>
    ", " <> resto.(16))

#########################################################################################
# Pág 43 Livro 1.3  
nome = fn primeiro_nome -> 
  fn segundo_nome -> 
    "#{primeiro_nome} #{segundo_nome}" 
  end
end
name = nome.("Wesley")
IO.inspect(name.("Rodrigues"))
#IO.inspect(nome.("Wesley").("Rodrigues"))
# IO.inspect()

#########################################################################################
# Pág 46 Livro 1.3  
IO.inspect(Enum.map [1,2,3,4], &(&1 + 2))   # Enum.map [1,2,3,4], fn x -> x + 2 end
Enum.each [1,2,3,4], &(IO.inspect &1)   # Enum.each [1,2,3,4], fn x -> IO.inspect x end
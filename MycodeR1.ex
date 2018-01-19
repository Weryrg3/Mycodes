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
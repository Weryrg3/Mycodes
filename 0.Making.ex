# defmodule Test do
#   def flatten1([]), do: []
#   def flatten1([head | tail]) when is_list(head) do
#     [head | tail1] = head

#     if is_list(head) do
#       flatten1(head)
#     else
#       [head | flatten1(tail)]
#     end
#   end
#   def flatten1([head | tail]) when not is_list(head) do
#     [head | flatten1(tail)]
#   end
# end

# IO.inspect(Test.flatten1([1, [2, 3, [4]], 5, [[[6]]]]))
# IO.inspect(Test.flatten1([1, [2, [[[3]]], [4]], [[[[[[[[[[5]]]]]]]]]], [6]]))
# IO.inspect(Test.flatten1([[1], [2], [3], [4]]))
# IO.inspect(Test.flatten1([1, 2, 3, [[[[4]]]]]))
defmodule MyList do
  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func)]
  #Recebe valores e uma função
end

#MyList.map [1, 2, 3, 4], fn (n) -> n/2 end


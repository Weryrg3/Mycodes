defmodule MyList do
    def map([], _func), do: []
    def map([ head | tail ], func), do: [ func.(head) | map(tail, func)]
    #Recebe valores e uma função
  end
  
  #MyList.map [1, 2, 3, 4], fn (n) -> n/2 end

defmodule MyList do
	def add_1([]), do: []
	def add_1([ head | tail ]), do: [head+1 | add_1(tail)]
end

"""
[1, 2, 3, 4, 5]

Verifica se vázio, faça vázio.
[ head | tail ]
hed = 1
tail = [2, 3, 4, 5]
"""

defmodule Tudo do 
  def imprime([]), do: []
  def imprime([head = [_, _, 5, _] | tail]) do
    IO.inspect(head)
    imprime(tail)
  end
  def imprime([_ | tail]), do: imprime(tail)
end  

test2 = [[6, 7, 8, 9],
[5, 6, 7, 8],
[4, 5, 6, 7],
[3, 4, 5, 6],
[2, 3, 5, 5],
[1, 2, 3, 4]
]

Tudo.imprime(test2)
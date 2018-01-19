#te
#import Enum      Com importação evitaria ter que escrever Enum mais de uma vez, porém nesse caso decidi não importar.
list1 = [1, 2, 3]
list2 = [0, 1, 2, 3, 4, 9, 8, 7, 6, 5]
IO.inspect(Enum.all?([1, nil, 3]))                  # false                                     /1    /&  &Enum.all?/1
IO.inspect(Enum.all?(list2, &(&1 < 10)))            # true  fun \ or fn x -> x < 10 end         /2    /&  &Enum.all?/2
IO.inspect(Enum.count(list1))                       # 3                                         /1    /&  &Enum.count/1
IO.inspect(Enum.count(list2, &(rem(&1, 2) == 0)))   # 5                                         /2    \ par [0, 2, 4, 6, 8] tamho = 5
IO.inspect(Enum.concat([1 .. 5, 6 .. 8]))           # [1, 2, 3, 4, 5, 6, 7, 8]                  /1
IO.inspect(Enum.concat(list1, list2))               # [1, 2, 3, 0, 1, 2, 3, 4, 9, 8, 7, 6, 5]   /2
IO.inspect(Enum.random(list2))                      # 9                                         /1    \ *valor aleatório da lista
IO.inspect(Enum.sum(list1))                         # 6                                         /1    \ Soma todos numeros da lista
IO.inspect(Enum.chunk_by(list2, &(&1 < 5)))         # [[0, 1, 2, 3, 4], [9, 8, 7, 6, 5]]        /2    \ or Enum.chunk_by([1, 2, 2, 3, 4, 4, 6, 7, 7], &(rem(&1, 2) == 1))
IO.inspect(Enum.chunk(list2, 2))                    # [[0, 1], [2, 3], [4, 9], '\b\a', [6, 5]]  /2    \ Igual?
IO.inspect(Enum.chunk_every(list2, 2))              # [[0, 1], [2, 3], [4, 9], '\b\a', [6, 5]]  /2    \ Igual?
# IO.inspect(Enum.chunk_every())                    #                                           /3
# IO.inspect(Enum.chunk_every())                    #                                           /4
# IO.inspect(Enum.chunk_while())                    #                                           /4
# IO.inspect(Enum.any?())                           #                                           /1
# IO.inspect(Enum.any?())                           #                                           /2
# IO.inspect(Enum.at())                             #                                           /2
# IO.inspect(Enum.at())                             #                                           /3
IO.inspect(Enum.dedup([1, 2, 3, 3, 2, 1]))          # [1, 2, 3, 2, 1]                           /1    \ Complexo? estudar mais
# IO.inspect(Enum.dedup_by())                       #                                           /2
IO.inspect(Enum.drop(list2, 3))                     # [3, 4, 9, 8, 7, 6, 5]                     /2    \ Retira o 3 primeiros valores da lista, se usado -3 retira os três ultimos valores
IO.inspect(Enum.drop_every(1 .. 15, 3))             # [2, 3, 5, 6, 8, 9, 11, 12, 14, 15]        /2    \ Retira sempre o 3 número, o primeiro número *sempre é descartado.
# IO.inspect(Enum.drop_while())                     #                                           /2
IO.inspect(Enum.each(1 .. 5, &(IO.puts/1)))         # 1 \n 2 \n 3 \n 4 \n 5 \n :ok \n           /2    \ Retorna números da lista separadamentes (no/list)
# IO.inspect(Enum.empty?())                         #                                           /1
# IO.inspect(Enum.fetch!())                         #                                           /2
# IO.inspect(Enum.fetch())                          #                                           /2
IO.inspect(Enum.filter([1, 2, 3, 4], &(&1 > 2)))    # [3, 4]                                    /2    \ Retorna lista com números que passaram na função (true(function))
# IO.inspect(Enum.find())                           #                                           /2
# IO.inspect(Enum.find())                           #                                           /3
# IO.inspect(Enum.find_index())                     #                                           /2
# IO.inspect(Enum.find_value())                     #                                           /2
# IO.inspect(Enum.find_value())                     #                                           /3
IO.inspect(Enum.flat_map([[1, 2], [3, 4]], &(&1)))  # [1, 2, 3, 4]                              /2    \ Pega matriz e transforma lista novamente matriz(chunk)
# IO.inspect(Enum.flat_map_reduce())                #                                           /3
# IO.inspect(Enum.intersperse())                    #                                           /2
# IO.inspect(Enum.into())                           #                                           /2
# IO.inspect(Enum.into())                           #                                           /3
IO.inspect(Enum.join(["ab", "cd", "efg"]))          # "abcdefg"                                 /1    \ Retorna uma string
IO.inspect(Enum.join(["ap", "ho", "fl"], ", "))     # "ap, ho, fl"                              /2    \ Retorna uma string, com junção da função passada
IO.inspect(Enum.map(1 .. 5, &(&1)))                 # [1, 2, 3, 4, 5]                           /2    \ Retorna uma nova lista
# IO.inspect(Enum.map_every())                      #                                           /3
# IO.inspect(Enum.map_join())                       #                                           /2
# IO.inspect(Enum.map_join())                       #                                           /3
# IO.inspect(Enum.map_reduce())                     #                                           /3
# IO.inspect(Enum.max())                            #                                           /1
# IO.inspect(Enum.max())                            #                                           /2
# IO.inspect(Enum.max_by())                         #                                           /2
# IO.inspect(Enum.max_by())                         #                                           /3
IO.inspect(Enum.member?([1, 2, 3, 4], 2))           # true                                      /2     \ Verifica se o *num(or letr..) está dentro da lista
# IO.inspect(Enum.min())                            #                                           /1
# IO.inspect(Enum.min())                            #                                           /2
# IO.inspect(Enum.min_by())                         #                                           /2
# IO.inspect(Enum.min_by())                         #                                           /3
# IO.inspect(Enum.min_max())                        #                                           /1
# IO.inspect(Enum.min_max())                        #                                           /2
# IO.inspect(Enum.min_max_by())                     #                                           /2
# IO.inspect(Enum.min_max_by())                     #                                           /3
# IO.inspect(Enum.reduce())                         #                                           /2
IO.inspect(Enum.reduce([1, 2, 3], 2, &+/2))         # 8                                         /3    \ Retorna um número, segundo argumento é um acumulador (acc) estudar +
# IO.inspect(Enum.reduce_while())                   #                                           /3
# IO.inspect(Enum.reject())                         #                                           /2
# IO.inspect(Enum.reverse())                        #                                           /1
# IO.inspect(Enum.reverse())                        #                                           /2
# IO.inspect(Enum.reverse_slice())                  #                                           /3
# IO.inspect(Enum.scan())                           #                                           /2
# IO.inspect(Enum.scan())                           #                                           /3
# IO.inspect(Enum.shuffle())                        #                                           /1
# IO.inspect(Enum.slice())                          #                                           /2
# IO.inspect(Enum.slice())                          #                                           /3
IO.inspect(Enum.sort([3, 4, 2, 3, 1]))              # [1, 2, 3, 3, 4]                           /1    \ Coloca números em ordem crescente
IO.inspect(Enum.sort([3, 4, 2, 3, 1], &>=/2))       # [4, 3, 3, 2, 1]                           /2    \ Usa uma função para números (função usada(>= decrescente))
# IO.inspect(Enum.sort_by())                        #                                           /2
# IO.inspect(Enum.sort_by())                        #                                           /3
# IO.inspect(Enum.split())                          #                                           /2
# IO.inspect(Enum.split_while())                    #                                           /2
# IO.inspect(Enum.split_with())                     #                                           /2
# IO.inspect(Enum.take())                           #                                           /2
# IO.inspect(Enum.take_every())                     #                                           /2
# IO.inspect(Enum.take_random())                    #                                           /2
# IO.inspect(Enum.take_while())                     #                                           /2
# IO.inspect(Enum.to_list())                        #                                           /1
IO.inspect(Enum.uniq([1, 1, 2, "a", "a", 3]))       # [1, 2, "a", 3]                            /1    \ Permite apenas um elemento sem repetir
# IO.inspect(Enum.uniq_by())                        #                                           /2
# IO.inspect(Enum.unzip())                          #                                           /1
# IO.inspect(Enum.with_index())                     #                                           /1
# IO.inspect(Enum.with_index())                     #                                           /2
# IO.inspect(Enum.zip())                            #                                           /1
# IO.inspect(Enum.zip())                            #                                           /2
# IO.inspect(Enum.OutOfBoundsError())               #
# IO.inspect(Enum.EmptyError())                     #
medals = [
  %{medal: :gold, player: "Anna"},
  %{medal: :silver, player: "Joe"},
  %{medal: :gold, player: "Zoe"},
  %{medal: :bronze, player: "Anna"},
  %{medal: :silver, player: "Anderson"},
  %{medal: :silver, player: "Peter"}
]
IO.inspect(Enum.group_by(medals, &(&1.medal), &(&1.player))) # /3
# %{bronze: ["Anna"], gold: ["Anna", "Zoe"], silver: ["Joe", "Anderson", "Peter"]}       /3

# IO.inspect(Enum.group_by())                       #                                           /2

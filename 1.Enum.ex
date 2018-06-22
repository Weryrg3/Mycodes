############################################################ Enum ################################################################
IO.puts("Enum \n")
#import Enum      Com importação evitaria ter que escrever Enum mais de uma vez, porém nesse caso decidi não importar.
list1 = [1, 2, 3]
list2 = [0, 1, 2, 3, 4, 9, 8, 7, 6, 5]
par = [2, 4, 6, 8]
palavras = ["Casa", "Wesley", "wes", "Contemporaneidade"]
list_words = ["cas", "tes", "ig"]
IO.inspect(Enum.all?([1, nil, 3]))                    # false                                         /1    /&  &Enum.all?/1
IO.inspect(Enum.all?(list2, &(&1 < 10)))              # true  fun \ or fn x -> x < 10 end             /2    /&  &Enum.all?/2
IO.inspect(Enum.count(list1))                         # 3                                             /1    /&  &Enum.count/1
IO.inspect(Enum.count(list2, &(rem(&1, 2) == 0)))     # 5                                             /2    \ par [0, 2, 4, 6, 8] tamanho = 5
IO.inspect(Enum.concat([1 .. 5, 6 .. 8]))             # [1, 2, 3, 4, 5, 6, 7, 8]                      /1
IO.inspect(Enum.concat(list1, list2))                 # [1, 2, 3, 0, 1, 2, 3, 4, 9, 8, 7, 6, 5]       /2
IO.inspect(Enum.random(list2))                        # 9                                             /1    \ *valor aleatório da lista
IO.inspect(Enum.sum(list1))                           # 6                                             /1    \ Soma todos números da lista
IO.inspect(Enum.chunk_by(list2, &(&1 < 5)))           # [[0, 1, 2, 3, 4], [9, 8, 7, 6, 5]]            /2    \ or Enum.chunk_by([1, 2, 2, 3, 4, 4, 6, 7, 7], &(rem(&1, 2) == 1))
IO.inspect(Enum.chunk(list2, 2))                      # [[0, 1], [2, 3], [4, 9], '\b\a', [6, 5]]      /2    \ Igual?
IO.inspect(Enum.chunk_every(list2, 2))                # [[0, 1], [2, 3], [4, 9], '\b\a', [6, 5]]      /2    \ Igual?
# IO.inspect(Enum.chunk_every())                      #                                               /3
IO.inspect(Enum.chunk_every(list2, 3, 2, :discard))   # [[0, 1, 2], [2, 3, 4], [4, 9, 8], [8, 7, 6]]  /4    \ ;discard???
# IO.inspect(Enum.chunk_while())                      #                                               /4
# IO.inspect(Enum.any?())                             #                                               /1
IO.inspect(Enum.any?(list2, &(&1 < 1)))               # true                                          /2
IO.inspect(Enum.at(list1, 2))                         # 3                                             /2    \ Retorna o elemento na posição indicada pos(0, 1, 2)
IO.inspect(Enum.at(list1, 3, :nao_tem))               # :nao_tem                                      /3    \ Retorna valor passado caso posição seja superior(nil)
IO.inspect(Enum.dedup([1, 2, 3, 3, 2, 1]))            # [1, 2, 3, 2, 1]                               /1    \ Complexo? estudar mais
# IO.inspect(Enum.dedup_by())                         #                                               /2
IO.inspect(Enum.drop(list2, 3))                       # [3, 4, 9, 8, 7, 6, 5]                         /2    \ Retira o 3 primeiros valores da lista, se usado -3 retira os três ultimos valores
IO.inspect(Enum.drop_every(1 .. 15, 3))               # [2, 3, 5, 6, 8, 9, 11, 12, 14, 15]            /2    \ Retira sempre o 3 número, o primeiro número *sempre é descartado.
# IO.inspect(Enum.drop_while())                       #                                               /2
IO.inspect(Enum.each(1 .. 5, &(IO.puts/1)))           # 1 \n 2 \n 3 \n 4 \n 5 \n :ok \n               /2    \ Retorna números da lista separadamentes (no/list)
IO.inspect(Enum.empty?([]))                           # true                                          /1    \ Verifica se lista está vazia
IO.inspect(Enum.fetch!([2, 4, 6], 0))                 # 2                                             /2    \ Retorna o valor do index, caso contrário error de compilação
IO.inspect(Enum.fetch([2, 4, 6], 1))                  # {:ok, 4}                                      /2    \ Retorna tupla com :ok e valor caso contrário erro
IO.inspect(Enum.filter([1, 2, 3, 4], &(&1 > 2)))      # [3, 4]                                        /2    \ Retorna lista com números que passaram na função (true(function))
IO.inspect(Enum.find([4, 2], &(rem(&1, 2) == 0)))     # 4                                             /2    \ Retorna primeiro valor que passa na função
IO.inspect(Enum.find(par, 0, &(rem(&1, 2) == 1)))     # 0                                             /3    \ Retorna 0 se nenhum dos números passar na função
IO.inspect(Enum.find_index(list1, &(&1 == 3)))        # 2                                             /2    \ Retorna o índice do número que passar na função
IO.inspect(Enum.find_value(par, &(rem(&1, 2) == 1)))  # nil                                           /2    \ Retorna true ou nil caso o valor passe ou não
IO.inspect(Enum.find_value(par, "Impar", &(&1 == 1))) # "Impar"                                       /3    \ Retorna valor passado caso não passe na função
IO.inspect(Enum.flat_map([[1, 2], [3, 4]], &(&1)))    # [1, 2, 3, 4]                                  /2    \ Pega matriz e transforma lista novamente matriz(chunk)
# IO.inspect(Enum.flat_map_reduce())                  #                                               /3
IO.inspect(Enum.intersperse(list1, 0))                # [1, 0, 2, 0, 3]                               /2
IO.inspect(Enum.into(1..5, [100, 101 ]))              # [100, 101, 1, 2, 3, 4, 5]                     /2    \
IO.inspect(Enum.into([2, 3], [2], &(&1 * 3)))         # [2, 6, 9]                                     /3    \ Retorna número passado e coloca função na lista
IO.inspect(Enum.join(["ab", "cd", "efg"]))            # "abcdefg"                                     /1    \ Retorna uma string
IO.inspect(Enum.join(["ap", "ho", "fl"], ", "))       # "ap, ho, fl"                                  /2    \ Retorna uma string, com junção da função passada
IO.inspect(Enum.map(1 .. 5, &(&1)))                   # [1, 2, 3, 4, 5]                               /2    \ Retorna uma nova lista
# IO.inspect(Enum.map_every())                        #                                               /3
# IO.inspect(Enum.map_join())                         #                                               /2
# IO.inspect(Enum.map_join())                         #                                               /3
# IO.inspect(Enum.map_reduce())                       #                                               /3
IO.inspect(Enum.max(palavras))                        # "wes"                                         /1    \ Retorna o maior valor, se String verifica valor ASCII number
# IO.inspect(Enum.max())                              #                                               /2
IO.inspect(Enum.max_by(palavras, &String.length/1))   # "Contemporaneidade"                           /2
# IO.inspect(Enum.max_by())                           #                                               /3
IO.inspect(Enum.member?([1, 2, 3, 4], 2))             # true                                          /2     \ Verifica se o *num(or letr..) está dentro da lista
IO.inspect(Enum.min(list2))                           # 0                                            /1
# IO.inspect(Enum.min())                              #                                               /2
# IO.inspect(Enum.min_by())                           #                                               /2
# IO.inspect(Enum.min_by())                           #                                               /3
# IO.inspect(Enum.min_max())                          #                                               /1
# IO.inspect(Enum.min_max())                          #                                               /2
# IO.inspect(Enum.min_max_by())                       #                                               /2
# IO.inspect(Enum.min_max_by())                       #                                               /3
# IO.inspect(Enum.reduce())                           #                                               /2
IO.inspect(Enum.reduce([1, 2, 3], 2, &+/2))           # 8                                             /3    \ Retorna um número, segundo argumento é um acumulador (acc) estudar +
# IO.inspect(Enum.reduce_while())                     #                                               /3
IO.inspect(Enum.reject(list2, &(rem(&1, 2) == 0)))    # [1, 3, 9, 7, 5]                               /2    \ Retira valores
# IO.inspect(Enum.reverse())                          #                                               /1
# IO.inspect(Enum.reverse())                          #                                               /2
# IO.inspect(Enum.reverse_slice())                    #                                               /3
# IO.inspect(Enum.scan())                             #                                               /2
# IO.inspect(Enum.scan())                             #                                               /3
# IO.inspect(Enum.shuffle())                          #                                               /1
# IO.inspect(Enum.slice())                            #                                               /2
# IO.inspect(Enum.slice())                            #                                               /3
IO.inspect(Enum.sort([3, 4, 2, 3, 1]))                # [1, 2, 3, 3, 4]                               /1    \ Coloca números em ordem crescente
IO.inspect(Enum.sort([3, 4, 2, 3, 1], &>=/2))         # [4, 3, 3, 2, 1]                               /2    \ Usa uma função para números (função usada(>= decrescente))
# IO.inspect(Enum.sort_by())                          #                                               /2
# IO.inspect(Enum.sort_by())                          #                                               /3
IO.inspect(Enum.split(list2, 3))                      # {[0, 1, 2], [3, 4, 9, 8, 7, 6, 5]}            /2
IO.inspect(Enum.split_while(list2, &(&1 < 4)))        # {[0, 1, 2, 3], [4, 9, 8, 7, 6, 5]}            /2
# IO.inspect(Enum.split_with())                       #                                               /2
IO.inspect(Enum.take(list2, 4))                       # [0, 1, 2, 3]                                  /2    \ Retorna os valores do primeiro até número indicado
IO.inspect(Enum.take_every(list2, 2))                 # [0, 2, 4, 8, 6]                               /2    \ Retorna os valores de *2 (number info) em 2
# IO.inspect(Enum.take_random())                      #                                               /2
IO.inspect(Enum.take_while(list2, &(&1 < 4)))         # [0, 1, 2, 3]                                  /2    \ Retorna valores que passam na função
IO.inspect(Enum.to_list(1..10))                       # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]               /1    \ Transforma um Range em lista
IO.inspect(Enum.uniq([1, 1, 2, "a", "a", 3]))         # [1, 2, "a", 3]                                /1    \ Permite apenas um elemento sem repetir
# IO.inspect(Enum.uniq_by())                          #                                               /2
# IO.inspect(Enum.unzip())                            #                                               /1
IO.inspect(Enum.with_index(list_words))               # [{"cas", 0}, {"tes", 1}, {"ig", 2}]           /1
# IO.inspect(Enum.with_index())                       #                                               /2
# IO.inspect(Enum.zip())                              #                                               /1
IO.inspect(Enum.zip(list1, palavras))                 # [{1, "Casa"}, {2, "Wesley"}, {3, "wes"}]      /2    \ Uni duas listas
# ----------------------------------------------------#------------------------------------------------#
# IO.inspect(Enum.OutOfBoundsError.exception())       #                                               /1
# IO.inspect(Enum.OutOfBoundsError.message())         #                                               /1
# ----------------------------------------------------#------------------------------------------------#
# IO.inspect(Enum.EmptyError.exception())             #                                               /1
# IO.inspect(Enum.EmptyError.message())               #                                               /1
########################################################################################################
medals = [                                                                                             #
  %{medal: :gold, player: "Anna"},                                                                     #
  %{medal: :silver, player: "Joe"},                                                                    #
  %{medal: :gold, player: "Zoe"},                                                                      #
  %{medal: :bronze, player: "Anna"},                                                                   #
  %{medal: :silver, player: "Anderson"},                                                               #
  %{medal: :silver, player: "Peter"}                                                                   #
]                                                                                                      #
IO.inspect(Enum.group_by(medals, &(&1.medal), &(&1.player))) #                                        /3
# %{bronze: ["Anna"], gold: ["Anna", "Zoe"], silver: ["Joe", "Anderson", "Peter"]}                    /3
# IO.inspect(Enum.group_by())                                                                         /2
IO.puts("\nEnumerable \n")                                                                             #
############################################################ Enumerable ################################
#IO.inspect(Enumerable.Date.Range.count())          #                                           /1
#IO.inspect(Enumerable.Date.Range.member?())        #                                           /2
#IO.inspect(Enumerable.Date.Range.reduce())         #                                           /3
#IO.inspect(Enumerable.Date.Range.slice())          #                                           /1
# --------------------------------------------------#--------------------------------------------#
#IO.inspect(Enumerable.File.Stream.count())         #                                           /1
#IO.inspect(Enumerable.File.Stream.member?())       #                                           /2
#IO.inspect(Enumerable.File.Stream.reduce())        #                                           /3
#IO.inspect(Enumerable.File.Stream.slice())         #                                           /1
# --------------------------------------------------#--------------------------------------------#
#IO.inspect(Enumerable.Function.count())            #                                           /1
#IO.inspect(Enumerable.Function.member?())          #                                           /2
#IO.inspect(Enumerable.Function.reduce())           #                                           /3
#IO.inspect(Enumerable.Function.slice())            #                                           /1
# --------------------------------------------------#--------------------------------------------#
#IO.inspect(Enumerable.GenEvent.Stream.count())     #                                           /1
#IO.inspect(Enumerable.GenEvent.Stream.member?())   #                                           /2
#IO.inspect(Enumerable.GenEvent.Stream.reduce())    #                                           /3
#IO.inspect(Enumerable.GenEvent.Stream.slice())     #                                           /1
# --------------------------------------------------#--------------------------------------------#
#IO.inspect(Enumerable.HashDict.count())            #                                           /1
#IO.inspect(Enumerable.HashDict.member?())          #                                           /2
#IO.inspect(Enumerable.HashDict.reduce())           #                                           /3
#IO.inspect(Enumerable.HashDict.slice())            #                                           /1
# --------------------------------------------------#--------------------------------------------#
#IO.inspect(Enumerable.HashSet.count                #                                           /1
#IO.inspect(Enumerable.HashSet.member?              #                                           /2
#IO.inspect(Enumerable.HashSet.reduce               #                                           /3
#IO.inspect(Enumerable.HashSet.slice                #                                           /1
# --------------------------------------------------#--------------------------------------------#
#IO.inspect(Enumerable.IO.Stream.count())           #                                           /1
#IO.inspect(Enumerable.IO.Stream.member?())         #                                           /2
#IO.inspect(Enumerable.IO.Stream.reduce())          #                                           /3
#IO.inspect(Enumerable.IO.Stream.slice())           #                                           /1
# --------------------------------------------------#--------------------------------------------#
#IO.inspect(Enumerable.List.count())                #                                           /1
#IO.inspect(Enumerable.List.member?())              #                                           /2
#IO.inspect(Enumerable.List.reduce())               #                                           /3
#IO.inspect(Enumerable.List.slice())                #                                           /1
# --------------------------------------------------#--------------------------------------------#
#IO.inspect(Enumerable.Map.count())                 #                                           /1
#IO.inspect(Enumerable.Map.member?())               #                                           /2
#IO.inspect(Enumerable.Map.reduce())                #                                           /3
#IO.inspect(Enumerable.Map.slice())                 #                                           /1
# --------------------------------------------------#--------------------------------------------#
#IO.inspect(Enumerable.MapSet.count())              #                                           /1
#IO.inspect(Enumerable.MapSet.member?())            #                                           /2
#IO.inspect(Enumerable.MapSet.reduce())             #                                           /3
#IO.inspect(Enumerable.MapSet.slice())              #                                           /1
# --------------------------------------------------#--------------------------------------------#
#IO.inspect(Enumerable.Range.count())               #                                           /1
#IO.inspect(Enumerable.Range.member?())             #                                           /2
#IO.inspect(Enumerable.Range.reduce())              #                                           /3
#IO.inspect(Enumerable.Range.slice())               #                                           /1
# --------------------------------------------------#--------------------------------------------#
#IO.inspect(Enumerable.Stream.count())              #                                           /1
#IO.inspect(Enumerable.Stream.member?())            #                                           /2
#IO.inspect(Enumerable.Stream.reduce())             #                                           /3
#IO.inspect(Enumerable.Stream.slice())              #                                           /1
# --------------------------------------------------#--------------------------------------------#
#IO.inspect(Enumerable.count())                     #                                           /1
#IO.inspect(Enumerable.member?())                   #                                           /2
#IO.inspect(Enumerable.reduce())                    #                                           /3
#IO.inspect(Enumerable.slice())                     #                                           /1
##################################################################################################
IO.puts("\nCollectable \n")                         #                                            #
# IO.inspect(Collectable.BitString.into())          #                                           /1
# IO.inspect(Collectable.File.Stream.into())        #                                           /1
# IO.inspect(Collectable.HashDict.into())           #                                           /1
# IO.inspect(Collectable.HashSet.into())            #                                           /1
# IO.inspect(Collectable.IO.Stream.into())          #                                           /1
# IO.inspect(Collectable.List.List.into())          #                                           /1
# IO.inspect(Collectable.Map.into())                #                                           /1
# IO.inspect(Collectable.MapSet.into())             #                                           /1
# IO.inspect(Collectable.into())                    #                                           /1

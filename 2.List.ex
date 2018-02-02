############################################## List ######################################################
list = [1, 2, 3]                                                                                         #
kw = [{:name, "Wesley"}, {:likes, "Programming"}, {:where, "Ji-Paraná", "RO"}]                           #
kw2 = [{:name, "Wesley"}, {:likes, "Programming"}]                                                       #
IO.puts("List\n")                                                                                        #
# IO.inspect(List.ascii_printable?())                         #                                         /1
# IO.inspect(List.ascii_printable?())                         #                                         /2
# IO.inspect(List.delete())                                   #                                         /2
# IO.inspect(List.delete_at())                                #                                         /2
# IO.inspect(List.duplicate())                                #                                         /2
# IO.inspect(List.first())                                    #                                         /1
IO.inspect(List.flatten([[[1], 2], [[[3]]]]))                 # [1, 2, 3]                               /1 
# IO.inspect(List.flatten())                                  #                                         /2
IO.inspect(List.foldl([1, 2, 3], "", &("#{&1}(#{&2})")))      # "3(2(1()))"                             /3  List.foldl([1,2,3], "", fn value, acc -> "#{value}(#{acc})" end)
IO.inspect(List.foldr([1, 2, 3], "", &("#{&1}(#{&2})")))      # "1(2(3()))"                             /3  List.foldr([1,2,3], "", fn value, acc -> "#{value}(#{acc})" end)
# IO.inspect(List.insert_at())                                #                                         /3
IO.inspect(List.keydelete(kw, "RO", 2))                       # [name: "Wesley", likes: "Programming"]  /3
IO.inspect(List.keyfind(kw, "RO", 2))                         # {:where, "Ji-Paraná", "RO"}             /3    \ Verificando se tem "RO" em kw, na segunda posição da tupla (keyword).
IO.inspect(List.keyfind(kw, "RO", 3, "teste"))                # "teste"                                 /4    \ Verifica "RO" posição 3, caso não encontre retorna com valor passado 
# IO.inspect(List.keymember?())                               #                                         /3
IO.inspect(List.keyreplace(kw2, :name, 0, {:nome, "Wesley"})) # [nome: "Wesley", likes: "Programming"]  /4
# IO.inspect(List.keysort())                                  #                                         /2
# IO.inspect(List.keystore())                                 #                                         /4
# IO.inspect(List.keytake())                                  #                                         /3
# IO.inspect(List.last())                                     #                                         /1
# IO.inspect(List.myers_difference())                         #                                         /2 
# IO.inspect(List.pop_at())                                   #                                         /2
# IO.inspect(List.pop_at())                                   #                                         /3
IO.inspect(List.replace_at(list, 2, "buckle my shoe"))        # [1, 2, "buckle my shoe"]                /3 charlist   \ na posição dois (0, 1, 2), trocou o 3 pela string
# IO.inspect(List.starts_with?())                             #                                         /2
# IO.inspect(List.to_atom())                                  #                                         /1
# IO.inspect(List.to_existing_atom())                         #                                         /1 
# IO.inspect(List.to_float())                                 #                                         /1
# IO.inspect(List.to_integer())                               #                                         /1
# IO.inspect(List.to_integer())                               #                                         /2
# IO.inspect(List.to_string())                                #                                         /1
# IO.inspect(List.to_tuple())                                 #                                         /1
# IO.inspect(List.update_at())                                #                                         /3
# IO.inspect(List.wrap())                                     #                                         /1
# IO.inspect(List.zip())                                      #                                         /1
# ------------------------------------------------------------#------------------------------------------#
# IO.inspect(List.Chars.Atom.to_charlist())                   #                                         /1
# IO.inspect(List.Chars.BitString.to_charlist())              #                                         /1
# IO.inspect(List.Chars.Float.to_charlist())                  #                                         /1
# IO.inspect(List.Chars.Integer.to_charlist())                #                                         /1
# IO.inspect(List.Chars.List.to_charlist())                   #                                         /1
# IO.inspect(List.Chars.to_charlist())                        #                                         /1
##########################################################################################################
IO.puts("\nTuple \n")                                                                                    #
################################################ Tuple ###################################################
# elem({}, 0) Percorre os elementos da tupla                  #                                         /2
# IO.inspect(Tuple.append())                                  #                                         /2
# IO.inspect(Tuple.delete_at())                               #                                         /2
# IO.inspect(Tuple.duplicate())                               #                                         /2
# IO.inspect(Tuple.insert_at())                               #                                         /3
# IO.inspect(Tuple.to_list())                                 #                                         /1
##########################################################################################################
IO.puts("\nMap \n")                                                                                      #
################################################ Map #####################################################
map = %{ nome: "Wesley", likes: "Programming", where: "Ji-Paraná" }                                      #
map1 = %{ nome: "Wesley"}                                                                 ################
IO.inspect(map[:nome])  # "Wesley"                                                        #
IO.inspect(map.nome)    # "Wesley"                                                        #
# m = %{ a: 1, b: 2, c: 3 }               %{a: 1, b: 2, c: 3}                             \ Map
# m1 = %{ m | b: "two", c: "three" }      %{a: 1, b: "two", c: "three"}                   \ Adicionar items a um novo map 
# m2 = %{ m1 | a: "one" }                 %{a: "one", b: "two", c: "three"}               \ Adicionar items a um novo map (Map.put_new/3) para adicionar uma nova chave
# IO.inspect(Map.delete())                      #                                         /2
IO.inspect(Map.drop(map, [:nome, :likes]))      # %{where: "Ji-Paraná"}                   /2
# IO.inspect(Map.equal?                         #                                         /2
# IO.inspect(Map.fetch!                         #                                         /2
# IO.inspect(Map.fetch                          #                                         /2
# IO.inspect(Map.from_struct                    #                                         /1
# IO.inspect(Map.get                            #                                         /2
# IO.inspect(Map.get                            #                                         /3
# IO.inspect(Map.get_and_update!                #                                         /3
# IO.inspect(Map.get_and_update                 #                                         /3
# IO.inspect(Map.get_lazy                       #                                         /3
IO.inspect(Map.has_key?(map, :nome))            # true                                    /2    \ Verifica se tem a key :nome
IO.inspect(Map.keys(map))                       # [:likes, :nome, :where]                 /1    \ Retonrna todas keys
IO.inspect(Map.values(map))                     # ["Programming", "Wesley", "Ji-Paraná"]  /1    \ Retorna todos valores
# IO.inspect(Map.merge                          #                                         /2
# IO.inspect(Map.merge                          #                                         /3
IO.inspect(Map.new())                           # %{}                                     /0    \ Cria um map *vazio
# IO.inspect(Map.new                            #                                         /1
# IO.inspect(Map.new                            #                                         /2
# IO.inspect(Map.pop                            #                                         /2
# IO.inspect(Map.pop                            #                                         /3
# IO.inspect(Map.pop_lazy                       #                                         /3
IO.inspect(Map.put(map1, :state, "RO"))         # %{nome: "Wesley", state: "RO"}          /3    \ Adiciona uma nova key e value
# IO.inspect(Map.put_new                        #                                         /3
# IO.inspect(Map.put_new_lazy                   #                                         /3
# IO.inspect(Map.replace!                       #                                         /3
# IO.inspect(Map.split                          #                                         /2
# IO.inspect(Map.take                           #                                         /2
# IO.inspect(Map.to_list                        #                                         /1
# IO.inspect(Map.update!                        #                                         /3
# IO.inspect(Map.update                         #                                         /4
############################################################################################
IO.puts("\nMapSet \n")                                                                     #
####################################### MapSet #############################################
# MapSet Need Enum.to_list, para printar                                                   #
# IO.inspect(MapSet.delete())                   #                                         /2
# IO.inspect(MapSet.difference())               #                                         /2
# IO.inspect(MapSet.disjoint?())                #                                         /2
# IO.inspect(MapSet.equal?())                   #                                         /2
# IO.inspect(MapSet.intersection())             #                                         /2
# IO.inspect(MapSet.member?())                  #                                         /2
IO.inspect(MapSet.new())                        # #MapSet<[]>                             /0
# IO.inspect(MapSet.new())                      #                                         /1
# IO.inspect(MapSet.new())                      #                                         /2
# IO.inspect(MapSet.put())                      #                                         /2
# IO.inspect(MapSet.size())                     #                                         /1
# IO.inspect(MapSet.subset?())                  #                                         /2
# IO.inspect(MapSet.to_list())                  #                                         /1
# IO.inspect(MapSet.union())                    #                                         /2
############################################################################################
IO.puts("\nKeyword \n")                                                                    #
########################## Keyword  ################################################################
IO.inspect(Keyword.delete([   a: 1, b: 2, a: 3], :a))             # [b: 2]                        /2
IO.inspect(Keyword.delete([a: 1, b: 2, a: 3], :a, 3))             # [a: 1, b: 2]                  /3
IO.inspect(Keyword.delete_first([a: 1, b: 2, a: 3], :a))          # [b: 2, a: 3]                  /2
IO.inspect(Keyword.drop([a: 1, b: 2, c: 3], [:b, :a]))            # [c: 3]                        /2
IO.inspect(Keyword.equal?([a: 1, b: 2], [b: 2, a: 1]))            # true                          /2
IO.inspect(Keyword.fetch!([a: 1], :a))                            # 1                             /2    \ Se estiver errado dá erro de compilação
IO.inspect(Keyword.fetch([a: 1], :b))                             # :error                        /2    \ Retorna um erro sem dar erro de compilação
IO.inspect(Keyword.get([a: 2], :a))                               # 2                             /2
IO.inspect(Keyword.get([a: 1], :b, 3))                            # 3                             /3
# IO.inspect(Keyword.get_and_update!())                           #                               /3
# IO.inspect(Keyword.get_and_update())                            #                               /3
# IO.inspect(Keyword.get_lazy())                                  #                               /3
IO.inspect(Keyword.get_values([a: 1, a: 2], :a))                  # [1, 2]                        /2
IO.inspect(Keyword.has_key?([a: 1], :b))                          # false                         /2
IO.inspect(Keyword.keys([a: 1, b: 2, a: 3]))                      # [:a, :b, :a]                  /1
IO.inspect(Keyword.keyword?([a: 1, b: 2, a: 3]))                  # true                          /1
IO.inspect(Keyword.merge([a: 1, b: 2], [a: 3, d: 4, a: 5]))       # [b: 2, a: 3, d: 4, a: 5]      /2
# IO.inspect(Keyword.merge())                                     #                               /3
IO.inspect(Keyword.new())                                         # []                            /0
IO.inspect(Keyword.new([{:b, 1}, {:a, 2}]))                       # [b: 1, a: 2]                  /1
IO.inspect(Keyword.new([:a, :b], fn(x) -> {x, x} end))            # [a: :a, b: :b]                /2
IO.inspect(Keyword.pop([a: 1], :a))                               # {1, []}                       /2
IO.inspect(Keyword.pop([a: 1], :b, 3))                            # {3, [a: 1]}                   /3
IO.inspect(Keyword.pop_first([a: 1, a: 2], :a))                   # {1, [a: 2]}                   /2
# IO.inspect(Keyword.pop_first())                                 #                               /3
# IO.inspect(Keyword.pop_lazy())                                  #                               /3
IO.inspect(Keyword.put([a: 1, b: 1], :a, 2))                      # [a: 2, b: 1]                  /3    \ Adiciona uma key e um value para Keyword, se chave já existe substitui
IO.inspect(Keyword.put_new([a: 1, b: 1], :a, 2))                  # [a: 1, b: 1]                  /3    \ Não adiciona key se a chave já existe
# IO.inspect(Keyword.put_new_lazy())                              #                               /3
IO.inspect(Keyword.replace!([a: 1, b: 2, a: 4], :a, 3))           # [a: 3, b: 2]                  /3
IO.inspect(Keyword.split([a: 1, b: 2, c: 3, a: 4], [:a, :c, :e])) # {[a: 1, c: 3, a: 4], [b: 2]}  /2
IO.inspect(Keyword.take([a: 1, b: 2, c: 3, a: 5], [:a, :c, :e]))  # [a: 1, c: 3, a: 5]            /2
IO.inspect(Keyword.to_list([a: 1, b: 2, c: 3, a: 5]))             # [a: 1, b: 2, c: 3, a: 5]      /1
IO.inspect(Keyword.update!([a: 1], :a, &(&1 * 2)))                # [a: 2]                        /3    \ Caso não achei a key ocorre erro de compilação[a: 1, b: 2, a: 3]
IO.inspect(Keyword.update([a: 1], :b, 13, &(&1 * 2)))             # [a: 1, b: 13]                 /4
IO.inspect(Keyword.values([a: 1, b: 2, a: 3]))                    # [1, 2, 3]                     /1
#################################################################################################### 
IO.puts("\nSet \n")                                                                                #
################################################ Set ###############################################
# IO.inspect(Set.delete())                                        #                               /2
# IO.inspect(Set.difference())                                    #                               /2
# IO.inspect(Set.disjoint?())                                     #                               /2
# IO.inspect(Set.equal?())                                        #                               /2
# IO.inspect(Set.intersection())                                  #                               /2
# IO.inspect(Set.member?())                                       #                               /2
# IO.inspect(Set.put())                                           #                               /2
# IO.inspect(Set.size())                                          #                               /1
# IO.inspect(Set.subset?())                                       #                               /2
# IO.inspect(Set.to_list())                                       #                               /1
# IO.inspect(Set.union())                                         #                               /2
####################################################################################################


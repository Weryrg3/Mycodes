############################# List ##############################
list = [1, 2, 3]
kw = [{:name, "Wesley"}, {:likes, "Programming"}, {:where, "Ji-Paraná", "RO"}]
kw2 = [{:name, "Wesley"}, {:likes, "Programming"}]
#IO.inspect(List.Chars               
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
IO.inspect(List.replace_at(list, 2, "buckle my shoe"))        # [1, 2, "buckle my shoe"]                /3    \ na posição dois (0, 1, 2), trocou o 3 pela string
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
# List.Chars
# IO.inspect(List.Chars.Atom())
# IO.inspect(List.Chars.BitString())
# IO.inspect(List.Chars.Float())
# IO.inspect(List.Chars.Integer())
# IO.inspect(List.Chars.List())
# IO.inspect(List.Chars.to_charlist/1  
##########################################################################################################

############################### Tuple 
# IO.inspect(Tuple.append())/2
# IO.inspect(Tuple.delete_at())/2
# IO.inspect(Tuple.duplicate())/2
# IO.inspect(Tuple.insert_at())/3
# IO.inspect(Tuple.to_list())/1
###############################

########################### Map
map = %{ nome: "Wesley", likes: "Programming", where: "Ji-Paraná" }
map1 = %{ nome: "Wesley"}
IO.inspect(map[:nome])  # "Wesley"
IO.inspect(map.nome)    # "Wesley"                                  
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
########################################################################################

########################## MapSet
# MapSet Need Enum.to_list, para printar
# IO.inspect(MapSet.delete/2          
# IO.inspect(MapSet.difference/2      
# IO.inspect(MapSet.disjoint?/2       
# IO.inspect(MapSet.equal?/2          
# IO.inspect(MapSet.intersection/2    
# IO.inspect(MapSet.member?/2         
# IO.inspect(MapSet.new/0             
# IO.inspect(MapSet.new/1             
# IO.inspect(MapSet.new/2             
# IO.inspect(MapSet.put/2             
# IO.inspect(MapSet.size/1            
# IO.inspect(MapSet.subset?/2         
# IO.inspect(MapSet.to_list/1         
# IO.inspect(MapSet.union/2 
######################################################

########################## Keyword
# IO.inspect(Keyword.delete/2             
# IO.inspect(Keyword.delete/3             
# IO.inspect(Keyword.delete_first/2       
# IO.inspect(Keyword.drop/2               
# IO.inspect(Keyword.equal?/2             
# IO.inspect(Keyword.fetch!/2             
# IO.inspect(Keyword.fetch/2              
# IO.inspect(Keyword.get/2                
# IO.inspect(Keyword.get/3                
# IO.inspect(Keyword.get_and_update!/3    
# IO.inspect(Keyword.get_and_update/3     
# IO.inspect(Keyword.get_lazy/3           
# IO.inspect(Keyword.get_values/2         
# IO.inspect(Keyword.has_key?/2           
# IO.inspect(Keyword.keys/1               
# IO.inspect(Keyword.keyword?/1           
# IO.inspect(Keyword.merge/2              
# IO.inspect(Keyword.merge/3              
# IO.inspect(Keyword.new/0                
# IO.inspect(Keyword.new/1                
# IO.inspect(Keyword.new/2                
# IO.inspect(Keyword.pop/2                
# IO.inspect(Keyword.pop/3                
# IO.inspect(Keyword.pop_first/2          
# IO.inspect(Keyword.pop_first/3          
# IO.inspect(Keyword.pop_lazy/3           
# IO.inspect(Keyword.put/3                
# IO.inspect(Keyword.put_new/3            
# IO.inspect(Keyword.put_new_lazy/3       
# IO.inspect(Keyword.replace!/3           
# IO.inspect(Keyword.split/2              
# IO.inspect(Keyword.take/2               
# IO.inspect(Keyword.to_list/1            
# IO.inspect(Keyword.update!/3            
# IO.inspect(Keyword.update/4             
# IO.inspect(Keyword.values/1   
##########################################

############################# Set
# IO.inspect(Set.delete/2          
# IO.inspect(Set.difference/2      
# IO.inspect(Set.disjoint?/2       
# IO.inspect(Set.equal?/2          
# IO.inspect(Set.intersection/2    
# IO.inspect(Set.member?/2         
# IO.inspect(Set.put/2             
# IO.inspect(Set.size/1            
# IO.inspect(Set.subset?/2         
# IO.inspect(Set.to_list/1         
# IO.inspect(Set.union/2



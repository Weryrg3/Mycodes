test = fn -> true end       
# IO.inspect(Stream.Reducers.chunk_by())                #                                 /3    \
# IO.inspect(Stream.Reducers.chunk_every())             #                                 /5    \
# IO.inspect(Stream.Reducers.dedup())                   #                                 /1    \      
# IO.inspect(Stream.Reducers.dedup())                   #                                 /2    \      
#IO.inspect(Stream.Reducers.drop())                     #                                 /0    \       
# IO.inspect(Stream.Reducers.drop())                    #                                 /1    \       
# IO.inspect(Stream.Reducers.drop_every())              #                                 /1    \ 
# IO.inspect(Stream.Reducers.drop_every())              #                                 /2    \ 
# IO.inspect(Stream.Reducers.drop_while())              #                                 /1    \ 
# IO.inspect(Stream.Reducers.drop_while())              #                                 /2    \ 
# IO.inspect(Stream.Reducers.filter())                  #                                 /1    \     
# IO.inspect(Stream.Reducers.filter())                  #                                 /2    \     
# IO.inspect(Stream.Reducers.filter_map())              #                                 /2    \ 
# IO.inspect(Stream.Reducers.filter_map())              #                                 /3    \ 
# IO.inspect(Stream.Reducers.map())                     #                                 /1    \        
# IO.inspect(Stream.Reducers.map())                     #                                 /2    \        
# IO.inspect(Stream.Reducers.map_every())               #                                 /2    \  
# IO.inspect(Stream.Reducers.map_every())               #                                 /3    \  
# IO.inspect(Stream.Reducers.reject())                  #                                 /1    \     
# IO.inspect(Stream.Reducers.reject())                  #                                 /2    \     
# IO.inspect(Stream.Reducers.scan2())                   #                                 /1    \      
# IO.inspect(Stream.Reducers.scan2())                   #                                 /2    \      
# IO.inspect(Stream.Reducers.scan3())                   #                                 /1    \      
# IO.inspect(Stream.Reducers.scan3())                   #                                 /2    \      
#IO.inspect(Stream.Reducers.take())                     #                                 /0    \       
# IO.inspect(Stream.Reducers.take())                    #                                 /1    \       
# IO.inspect(Stream.Reducers.take_every())              #                                 /1    \ 
# IO.inspect(Stream.Reducers.take_every())              #                                 /2    \ 
# IO.inspect(Stream.Reducers.take_while())              #                                 /1    \ 
# IO.inspect(Stream.Reducers.take_while())              #                                 /2    \ 
# IO.inspect(Stream.Reducers.uniq_by())                 #                                 /1    \    
# IO.inspect(Stream.Reducers.uniq_by())                 #                                 /2    \    
#IO.inspect(Stream.Reducers.with_index())               #                                 /0    \ 
# IO.inspect(Stream.Reducers.with_index())              #                                 /1    \
# ------------------------------------------------------#----------------------------------#
# IO.inspect(Stream.chunk_by())                         #                                 /2    \
# IO.inspect(Stream.chunk_every())                      #                                 /2    \
# IO.inspect(Stream.chunk_every())                      #                                 /3    \
# IO.inspect(Stream.chunk_every())                      #                                 /4    \
# IO.inspect(Stream.chunk_while())                      #                                 /4    \
# IO.inspect(Stream.concat())                           #                                 /1    \
# IO.inspect(Stream.concat())                           #                                 /2    \
IO.inspect(Stream.cycle([1, 2, 3]) |> Enum.take(7))     # [1, 2, 3, 1, 2, 3, 1]           /1    \ ∞ infinito
# IO.inspect(Stream.dedup())                            #                                 /1    \
# IO.inspect(Stream.dedup_by())                         #                                 /2    \
# IO.inspect(Stream.drop())                             #                                 /2    \
# IO.inspect(Stream.drop_every())                       #                                 /2    \
# IO.inspect(Stream.drop_while())                       #                                 /2    \
# IO.inspect(Stream.each())                             #                                 /2    \
# IO.inspect(Stream.filter())                           #                                 /2    \
# IO.inspect(Stream.flat_map())                         #                                 /2    \
# IO.inspect(Stream.intersperse())                      #                                 /2    \
# IO.inspect(Stream.interval())                         #                                 /1    \
# IO.inspect(Stream.into())                             #                                 /2    \
# IO.inspect(Stream.into())                             #                                 /3    \
IO.inspect(Stream.iterate(2, &(&1*&1)) |> Enum.take(5)) # [2, 4, 16, 256, 65536]          /2    \ ∞ infinito
# IO.inspect(Stream.map())                              #                                 /2    \
# IO.inspect(Stream.map_every())                        #                                 /3    \
# IO.inspect(Stream.reject())                           #                                 /2    \
IO.inspect(Stream.repeatedly(test) |> Enum.take(5))     # [true, true, true, true, true]  /1    \ Recebe uma função anônima.  ∞ infinito
# IO.inspect(Stream.resource())                         #                                 /3    \
# IO.inspect(Stream.run())                              #                                 /1    \
# IO.inspect(Stream.scan())                             #                                 /2    \
# IO.inspect(Stream.scan())                             #                                 /3    \
# IO.inspect(Stream.take())                             #                                 /2    \
# IO.inspect(Stream.take_every())                       #                                 /2    \
# IO.inspect(Stream.take_while())                       #                                 /2    \
# IO.inspect(Stream.timer())                            #                                 /1    \
# IO.inspect(Stream.transform())                        #                                 /3    \
# IO.inspect(Stream.transform())                        #                                 /4    \
# IO.inspect(Stream.uniq())                             #                                 /1    \
# IO.inspect(Stream.uniq_by())                          #                                 /2    \
# IO.inspect(Stream.with_index())                       #                                 /1    \
# IO.inspect(Stream.with_index())                       #                                 /2    \
# IO.inspect(Stream.zip())                              #                                 /1    \
IO.inspect(Stream.zip(1..3, 4..7) |> Enum.to_list())    # [{1, 4}, {2, 5}, {3, 6}]        /2    \ Uni duas listas
IO.inspect(Stream.unfold({0,1}, fn {f1,f2} -> {f1, {f2, f1+f2}} end) |> Enum.take(10))  # [0, 1, 1, 2, 3, 5, 8, 13, 21, 34] /2    \


#Stream.iterate(1, fn previous -> previous + 1 end)    # Infinit, Enum.take(integers, 5) (Enum.each(integers, &IO.puts/1) -> infinity
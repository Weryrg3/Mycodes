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
################################################ Access ##################################################
IO.puts("\nAccess \n")
# IO.inspect(Access.all())                                #                                 /0
# IO.inspect(Access.at())                               #                                 /1
# IO.inspect(Access.elem())                               #                                 /1
# IO.inspect(Access.fetch())                                #                                 /2
# IO.inspect(Access.filter())                               #                                 /1
# IO.inspect(Access.get())                                #                                 /2
# IO.inspect(Access.get())                                #                                 /3
# IO.inspect(Access.get_and_update())                               #                                 /3
# IO.inspect(Access.key!())                               #                                 /1
# IO.inspect(Access.key())                                #                                 /1
# IO.inspect(Access.key())                                #                                 /2
# IO.inspect(Access.pop())                                #                                 /2
################################################ Date ##################################################
IO.puts("\nDate \n")
# IO.inspect(Date.add())                                 #                                            /2
# IO.inspect(Date.compare())                                 #                                            /2
# IO.inspect(Date.convert! ())                                 #                                            /2
# IO.inspect(Date.convert())                                 #                                            /2
# IO.inspect(Date.day_of_week())                                 #                                            /1
# IO.inspect(Date.days_in_month())                                 #                                            /1
# IO.inspect(Date.diff ())                                 #                                            /2
# IO.inspect(Date.from_erl!())                                 #                                            /1
# IO.inspect(Date.from_erl!())                                 #                                            /2
# IO.inspect(Date.from_erl ())                                 #                                            /1
# IO.inspect(Date.from_erl ())                                 #                                            /2
# IO.inspect(Date.from_iso8601!())                                 #                                            /1
# IO.inspect(Date.from_iso8601!())                                 #                                            /2
# IO.inspect(Date.from_iso8601 ())                                 #                                            /1
# IO.inspect(Date.from_iso8601 ())                                 #                                            /2
# IO.inspect(Date.leap_year? ())                                 #                                            /1
# IO.inspect(Date.new())                                 #                                            /3
# IO.inspect(Date.new())                                 #                                            /4
# IO.inspect(Date.range())                                 #                                            /2
# IO.inspect(Date.to_erl ())                                 #                                            /1
# IO.inspect(Date.to_iso8601 ())                                 #                                            /1
# IO.inspect(Date.to_iso8601 ())                                 #                                            /2
# IO.inspect(Date.to_string())                                 #                                            /1
# IO.inspect(Date.utc_today())                                 #                                            /0
# IO.inspect(Date.utc_today())                                 #                                            /1

################################################ DateTime ##################################################
IO.puts("\nDateTIme \n")
# IO.inspect(DateTime.compare())                                 #                                            /2
# IO.inspect(DateTime.convert!())                                #                                            /2
# IO.inspect(DateTime.convert())                                 #                                            /2
# IO.inspect(DateTime.diff())                                #                                            /2
# IO.inspect(DateTime.diff())                                #                                            /3
# IO.inspect(DateTime.from_iso8601())                                #                                            /1
# IO.inspect(DateTime.from_iso8601())                                #                                            /2
# IO.inspect(DateTime.from_naive!())                                 #                                            /2
# IO.inspect(DateTime.from_naive())                                #                                            /2
# IO.inspect(DateTime.from_unix!())                                #                                            /1
# IO.inspect(DateTime.from_unix!())                                #                                            /2
# IO.inspect(DateTime.from_unix!())                                #                                            /3
# IO.inspect(DateTime.from_unix())                                 #                                            /1
# IO.inspect(DateTime.from_unix())                                 #                                            /2
# IO.inspect(DateTime.from_unix())                                 #                                            /3
# IO.inspect(DateTime.to_date())                                 #                                            /1
# IO.inspect(DateTime.to_iso8601())                                #                                            /1
# IO.inspect(DateTime.to_iso8601())                                #                                            /2
# IO.inspect(DateTime.to_naive())                                #                                            /1
# IO.inspect(DateTime.to_string())                                 #                                            /1
# IO.inspect(DateTime.to_time())                                 #                                            /1
# IO.inspect(DateTime.to_unix())                                 #                                            /1
# IO.inspect(DateTime.to_unix())                                 #                                            /2
# IO.inspect(DateTime.truncate())                                #                                            /2
# IO.inspect(DateTime.utc_now())                                 #                                            /0
# IO.inspect(DateTime.utc_now())                                 #                                            /1
############################################### Range #######################################################
IO.puts("\nRange \n")
#IO.inspect(Range.new())     #/2
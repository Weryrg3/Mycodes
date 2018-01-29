# # -> File.open("file.txt", [:write], &(IO.write(&1, "Hello World!")))
# file.txt
  #1 linha
  #2 linha
  #3 linha
# {:ok, file} = File.open("foo.tar.gz", [:read, :compressed])
# IO.read(file, :line)
# File.close(file)
# IO.inspect(File.CopyError.exception())               #                                            /1
# IO.inspect(File.CopyError.message())                 #                                            /1
# IO.inspect(File.Error.exception())                   #                                            /1
# IO.inspect(File.Error.message())                     #                                            /1
# IO.inspect(File.LinkError.exception())               #                                            /1
# IO.inspect(File.LinkError.message())                 #                                            /1
# IO.inspect(File.Stat.from_record())                  #                                            /1
# IO.inspect(File.Stat.to_record())                    #                                            /1
# File.Stream.                                  
# IO.inspect(File.cd!())                               #                                            /1
# IO.inspect(File.cd!())                               #                                            /2
# IO.inspect(File.cd())                                #                                            /1
# IO.inspect(File.chgrp!())                            #                                            /2
# IO.inspect(File.chgrp())                             #                                            /2
# IO.inspect(File.chmod!())                            #                                            /2
# IO.inspect(File.chmod())                             #                                            /2
# IO.inspect(File.chown!())                            #                                            /2
# IO.inspect(File.chown())                             #                                            /2
# IO.inspect(File.close())                             #                                            /1
# IO.inspect(File.copy!())                             #                                            /2
# IO.inspect(File.copy!())                             #                                            /3
# IO.inspect(File.copy())                              #                                            /2
# IO.inspect(File.copy())                              #                                            /3
# IO.inspect(File.cp!())                               #                                            /2
# IO.inspect(File.cp!())                               #                                            /3
# IO.inspect(File.cp())                                #                                            /2
# IO.inspect(File.cp())                                #                                            /3
# IO.inspect(File.cp_r!())                             #                                            /2
# IO.inspect(File.cp_r!())                             #                                            /3
# IO.inspect(File.cp_r())                              #                                            /2
# IO.inspect(File.cp_r())                              #                                            /3
IO.inspect(File.cwd!())                                # "/home/wesley/1.Wesley/Mycodes0"           /0
IO.inspect(File.cwd())                                 # {:ok, "/home/wesley/1.Wesley/Mycodes0"}    /0
# IO.inspect(File.dir?())                              #                                            /1
# IO.inspect(File.exists?())                           #                                            /1
# IO.inspect(File.ln!())                               #                                            /2
# IO.inspect(File.ln())                                #                                            /2
# IO.inspect(File.ln_s!())                             #                                            /2
# IO.inspect(File.ln_s())                              #                                            /2
# IO.inspect(File.ls!())                               #  /0   \ Retorna lista com todos nome de todos arquivos na pasta.
# IO.inspect(File.ls!())                               #                                            /1
# IO.inspect(File.ls())                                #  /0   \ Retorna uma tupla com oK e lista com nome ...
# IO.inspect(File.ls())                                #                                            /1
# IO.inspect(File.lstat!())                            #                                            /1
# IO.inspect(File.lstat!())                            #                                            /2
# IO.inspect(File.lstat())                             #                                            /1
# IO.inspect(File.lstat())                             #                                            /2
# IO.inspect(File.mkdir!())                            #                                            /1
# IO.inspect(File.mkdir())                             #                                            /1
# IO.inspect(File.mkdir_p!())                          #                                            /1
# IO.inspect(File.mkdir_p())                           #                                            /1
# IO.inspect(File.open!())                             #                                            /1
# IO.inspect(File.open!())                             #                                            /2
# IO.inspect(File.open!())                             #                                            /3
# IO.inspect(File.open())                              #                                            /1
# IO.inspect(File.open())                              #                                            /2
# IO.inspect(File.open())                              #                                            /3
IO.inspect(File.read!("file.txt"))                     # "1 linha\n2 linha\n3 linha"                /1    \ Caso erro, terminal para. (File.error)
IO.inspect(File.read("file.txt"))                      # {:ok, "1 linha\n2 linha\n3 linha"}         /1    \ Caso erro retorna {:error, :enoent}
# IO.inspect(File.read_link!())                        #                                            /1
# IO.inspect(File.read_link())                         #                                            /1
# IO.inspect(File.regular?())                          #                                            /1
# IO.inspect(File.rename())                            #                                            /2
# IO.inspect(File.rm!())                               #                                            /1
# IO.inspect(File.rm())                                #                                            /1
# IO.inspect(File.rm_rf!())                            #                                            /1
# IO.inspect(File.rm_rf())                             #                                            /1
# IO.inspect(File.rmdir!())                            #                                            /1
# IO.inspect(File.rmdir())                             #                                            /1
# IO.inspect(File.stat!())                             #                                            /1
# IO.inspect(File.stat!())                             #                                            /2
# IO.inspect(File.stat())                              #                                            /1
# IO.inspect(File.stat())                              #                                            /2
# IO.inspect(File.stream!())                           #                                            /1
# IO.inspect(File.stream!())                           #                                            /2
# IO.inspect(File.stream!())                           #                                            /3
# IO.inspect(File.touch!())                            #                                            /1
# IO.inspect(File.touch!())                            #                                            /2
# IO.inspect(File.touch())                             #                                            /1
# IO.inspect(File.touch())                             #                                            /2
# IO.inspect(File.write!())                            #                                            /2
# IO.inspect(File.write!())                            #                                            /3
# IO.inspect(File.write())                             #                                            /2
# IO.inspect(File.write())                             #                                            /3
# IO.inspect(File.write_stat!())                       #                                            /2
# IO.inspect(File.write_stat!())                       #                                            /3
# IO.inspect(File.write_stat())                        #                                            /2
# IO.inspect(File.write_stat())                        #                                            /3
################################################ Path ################################################
IO.puts("\nPath \n")
# IO.inspect(Path.Wildcard.list_dir())                   #                                            /1
# IO.inspect(Path.Wildcard.read_link_info())             #                                            /1
# IO.inspect(Path.absname())                             #                                            /1
# IO.inspect(Path.absname())                             #                                            /2
# IO.inspect(Path.basename())                            #                                            /1
# IO.inspect(Path.basename())                            #                                            /2
# IO.inspect(Path.dirname())                             #                                            /1
# IO.inspect(Path.expand())                              #                                            /1
# IO.inspect(Path.expand())                              #                                            /2
IO.inspect(Path.extname("test.exs"))                             #                                            /1
# IO.inspect(Path.join())                                #                                            /1
# IO.inspect(Path.join())                                #                                            /2
# IO.inspect(Path.relative())                            #                                            /1
# IO.inspect(Path.relative_to())                         #                                            /2
# IO.inspect(Path.relative_to_cwd())                     #                                            /1
# IO.inspect(Path.rootname())                            #                                            /1
# IO.inspect(Path.rootname())                            #                                            /2
# IO.inspect(Path.split())                               #                                            /1
# IO.inspect(Path.type())                                #                                            /1
# IO.inspect(Path.wildcard())                            #                                            /1
# IO.inspect(Path.wildcard())                            #                                            /2
################################################ Date ##################################################
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

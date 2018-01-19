#import String      Com importação evitaria ter que escrever String mais de uma vez, porém nesse caso decidi não importar.
IO.inspect(String.capitalize("capitaliza prim palavr"))       # "Capitaliza prim palavr"                /1    /&  &String.capitalize/1
IO.inspect(String.first("Pega prim letra"))                   # "P"                                     /1    /&  &String.first/1
IO.inspect(String.last("Pega ult letra"))                     # "a"                                     /1    /&  &String.last/1
IO.inspect(String.reverse("Reverte as palavras"))             # "sarvalap sa etreveR"                   /1    /&  &String.reverse/1
IO.inspect(String.split("Transf String em lista"))            # ["Transf", "String", "em", "lista"]     /1    /&  &String.split/1
IO.inspect(String.split("Transf.Str... por arg", "."))        # ["Transf", "Str", "", "", " por arg"]   /2    /&  &String.split/2
IO.inspect(String.length("Tamnho da Str"))                    # 13                                      /1    /&  &String.length/1
IO.inspect(String.upcase("Deixa tudo maisculo"))              # "DEIXA TUDO MAISCULO"                   /1    /&  &String.upcase/1
IO.inspect(String.duplicate("Duplica ", 3))                   # "Duplica Duplica Duplica "              /2    /&  &String.duplicate/2
IO.inspect(String.downcase("DEIXA TUDO MINUSCULO"))           # "deixa tudo minusculo"                  /1    /&  &String.downcase/1
IO.inspect(String.to_charlist("Passa para char"))             # 'Passa para char'                       /1    /&  &String.to_charlist/1
IO.inspect(String.printable?("Verifica se é printavel"))      # true                                    /1    /&  &String.printable?/1
IO.inspect(String.to_integer("100"))                          # 100                                     /1    /&  &String.to_integer/1
IO.inspect(String.to_float("10.50"))                          # 10.5                                    /1    /&  &String.to_float/1
IO.inspect(String.to_atom("atom")) # ------------------------ # :atom   ###Não Recomendável usar##      /1    /&  &String.to_atom/1
IO.inspect(String.to_existing_atom("atom"))                   # :atom     Recomendável usar             /1    /&  &String.to_existing_atom/1
IO.inspect(String.codepoints("Lista "))                       # ["L", "i", "s", "t", "a", " "]          /1    /&  &String.codepoints/1
IO.inspect(String.at("ABCD", 1))                              # "B"                                     /2    /&  &String.at/2
IO.inspect(String.contains?("ABCD e FGH", ["FGH", "e"]))      # true                                    /2    /&  &String.contains?/2
IO.inspect(String.pad_leading("ABCD", 6))                     # "  ABCD"                                /2    \completa tamanho da String, com numero, nesse caso espaço.
IO.inspect(String.pad_leading("ABCD", 6, "-"))                # "--ABCD"                                /3    \completa tamanho da String, com numero, nesse caso traço
IO.inspect(String.pad_trailing("ABCD", 6))                    # "ABCD  "                                /2    \completa tamanho da String, com numero, nesse caso espaço.
IO.inspect(String.pad_trailing("ABCD", 6, "*"))               # "ABCD**"                                /3    \completa tamanho da String, com numero, nesse caso asterisco
# IO.inspect(String.Break())                                  #                                          
# IO.inspect(String.Casing                                    #
# IO.inspect(String.Chars())                                  #                                          
# IO.inspect(String.Normalizer())                             #                                            
# IO.inspect(String.Tokenizer())                              #                                            
# IO.inspect(String.Unicode())                                #                                          
# IO.inspect(String.capitalize())                             #                                         /2
# IO.inspect(String.chunk())                                  #                                         /2
# IO.inspect(String.downcase())                               #                                         /2
# IO.inspect(String.ends_with?())                             #                                         /2
# IO.inspect(String.equivalent?())                            #                                         /2
# IO.inspect(String.graphemes())                              #                                         /1
# IO.inspect(String.jaro_distance())                          #                                         /2
# IO.inspect(String.match?())                                 #                                         /2
# IO.inspect(String.myers_difference())                       #                                         /2
# IO.inspect(String.next_codepoint())                         #                                         /1
# IO.inspect(String.next_grapheme())                          #                                         /1
# IO.inspect(String.next_grapheme_size())                     #                                         /1
# IO.inspect(String.normalize())                              #                                         /2
# IO.inspect(String.printable?())                             #                                         /2
# IO.inspect(String.replace())                                #                                         /3
# IO.inspect(String.replace())                                #                                         /4
# IO.inspect(String.replace_leading())                        #                                         /3
# IO.inspect(String.replace_prefix())                         #                                         /3
# IO.inspect(String.replace_suffix())                         #                                         /3
# IO.inspect(String.replace_trailing())                       #                                         /3
# IO.inspect(String.slice())                                  #                                         /2
# IO.inspect(String.slice())                                  #                                         /3
# IO.inspect(String.split())                                  #                                         /3
# IO.inspect(String.split_at())                               #                                         /2
# IO.inspect(String.splitter())                               #                                         /2
# IO.inspect(String.splitter())                               #                                         /3
# IO.inspect(String.starts_with?())                           #                                         /2
# IO.inspect(String.to_integer())                             #                                         /2
# IO.inspect(String.trim())                                   #                                         /1
# IO.inspect(String.trim())                                   #                                         /2
# IO.inspect(String.trim_leading())                           #                                         /1
# IO.inspect(String.trim_leading())                           #                                         /2
# IO.inspect(String.trim_trailing())                          #                                         /1
# IO.inspect(String.trim_trailing())                          #                                         /2
# IO.inspect(String.upcase())                                 #                                         /2
# IO.inspect(String.valid?())                                 #                                         /1
# IO.inspect(String.String.Chars.                             #
# IO.inspect(String.StringIO.                                 #           


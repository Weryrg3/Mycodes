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
IO.inspect(String.codepoints("Ate\u0308 "))                   # ["A", "t", "e", "̈", " "]                 /1    /&  &String.codepoints/1
IO.inspect(String.graphemes("Ate\u0308 "))                    # ["A", "t", "ë", " "]                     /1    / Suporta caracteres especiais por código
IO.inspect(String.at("ABCD", 1))                              # "B"                                     /2    /&  &String.at/2
IO.inspect(String.contains?("ABCD e FGH", ["FGH", "e"]))      # true                                    /2    /&  &String.contains?/2
IO.inspect(String.pad_leading("ABCD", 6))                     # "  ABCD"                                /2    \completa tamanho da String, com numero, nesse caso espaço.
IO.inspect(String.pad_leading("ABCD", 6, "-"))                # "--ABCD"                                /3    \completa tamanho da String, com numero, nesse caso traço
IO.inspect(String.pad_trailing("ABCD", 6))                    # "ABCD  "                                /2    \completa tamanho da String, com numero, nesse caso espaço.
IO.inspect(String.pad_trailing("ABCD", 6, "*"))               # "ABCD**"                                /3    \completa tamanho da String, com numero, nesse caso asterisco
# IO.inspect(String.capitalize())                             #                                         /2
# IO.inspect(String.chunk())                                  #                                         /2
# IO.inspect(String.downcase())                               #                                         /2
IO.inspect(String.ends_with?("string", ["elix", "ring"]))     # tue                                     /2    \ Verifica se a String termina com as palavras passadas
# IO.inspect(String.equivalent?())                            #                                         /2
IO.inspect(String.jaro_distance("Jose", "jose"))              # 0.8333333333333334                      /2    \ Mostra numero de similaridade de duas strings
# IO.inspect(String.match?())                                 #                                         /2
IO.inspect(String.myers_difference("casa", "casarão"))        # [eq: "casa", ins: "rão"]                /2    \ Mostra diferença de duas strings
IO.inspect(String.next_codepoint("String"))                   # {"S", "tring"}                          /1    \ Divide string entre primeiro e resto nil usado para recursão
IO.inspect(String.next_grapheme("String"))                    # {"S", "tring"}                          /1
# IO.inspect(String.next_grapheme_size())                     #                                         /1
# IO.inspect(String.normalize())                              #                                         /2
# IO.inspect(String.printable?())                             #                                         /2
IO.inspect(String.replace("the cat on the mat", "at", "AT"))  # "the cAT on the mAT"                    /3
IO.inspect(String.replace("the cat on the mat", "at", "AT", global: false)) # "the cAT on the mat"      /4    \ Se global false só troca primeira palavra caso contrário troca tudo
# IO.inspect(String.replace_leading())                        #                                         /3
# IO.inspect(String.replace_prefix())                         #                                         /3
# IO.inspect(String.replace_suffix())                         #                                         /3
# IO.inspect(String.replace_trailing())                       #                                         /3
# IO.inspect(String.slice())                                  #                                         /2
IO.inspect(String.slice("the cat on the mat", 4, 5))          # "cat o"                                 /3    \ Retorna pedaço da string apartir do número se negativo retorna de trás -4, 5
# IO.inspect(String.split())                                  #                                         /3
# IO.inspect(String.split_at())                               #                                         /2
# IO.inspect(String.splitter())                               #                                         /2
# IO.inspect(String.splitter())                               #                                         /3
IO.inspect(String.starts_with?("string", ["stri", "ring"]))   # true                                    /2    \ Verifica se a string inicia com as letras informadas
IO.inspect(String.to_integer("50", 10))                       # 50                                      /2    \ Informa 
IO.inspect(String.trim("   casa nova\n \n \t     "))          # "casa nova" ## Melhor função            /1    \ Retorna string sem espaços ou quebra de linha
IO.inspect(String.trim("!!!Venda!!!!!", "!"))                 # "Venda"    ## Melhor função             /2    \ Retorna string sem caracter especifico
IO.inspect(String.trim_leading("\t\f   Hello\t\n"))           # "Hello\t\n"                             /1    \ Retorna string sem espaços ou quebra na frente
IO.inspect(String.trim_leading("!!!Venda!!!!!", "!"))         # "Venda!!!!!"                            /2    \ Retorna string sem caracter especifico na frente
IO.inspect(String.trim_trailing("\t\f   Hello\t\n"))          # "\t\f   Hello"                          /1    \ Retorna string sem espaços ou quebra no final
IO.inspect(String.trim_trailing("!!!Venda!!!!!", "!"))        # "!!!Venda"                              /2    \ Retorna string sem caracter especifico no final
# IO.inspect(String.upcase())                                 #                                         /2
IO.inspect(String.valid?("☭∂cas"))                            # true                                    /1
# ------------------------------------------------------------#------------------------------------------#
#IO.inspect(StringIO.close())                                 #                                         /1
#IO.inspect(StringIO.contents())                              #                                         /1
#IO.inspect(StringIO.flush())                                 #                                         /1
#IO.inspect(StringIO.init())                                  #                                         /1
#IO.inspect(StringIO.open())                                  #                                         /1
#IO.inspect(StringIO.open())                                  #                                         /2
# ------------------------------------------------------------#------------------------------------------#
# IO.inspect(String.Break.decompose())                        #                                         /2
# IO.inspect(String.Break.do_trim_leading())                  #                                         /1
# IO.inspect(String.Break.split())                            #                                         /1
# IO.inspect(String.Break.trim_leading())                     #                                         /1
# IO.inspect(String.Break.trim_trailing())                    #                                         /1
# ------------------------------------------------------------#------------------------------------------#
# IO.inspect(String.Casing.downcase())                        #                                         /3
# IO.inspect(String.Casing.titlecase_once())                  #                                         /2
# IO.inspect(String.Casing.upcase())                          #                                         /3
# ------------------------------------------------------------#------------------------------------------#
# IO.inspect(String.Chars.to_string                           #                                         /1
# IO.inspect(String.Chars.Atom.to_string())                   #                                         /1
# IO.inspect(String.Chars.BitString.to_string())              #                                         /1
# IO.inspect(String.Chars.Date.to_string())                   #                                         /1
# IO.inspect(String.Chars.DateTime.to_string())               #                                         /1
# IO.inspect(String.Chars.Float.to_string())                  #                                         /1
# IO.inspect(String.Chars.Integer.to_string())                #                                         /1
# IO.inspect(String.Chars.List.to_string())                   #                                         /1
# IO.inspect(String.Chars.NaiveDateTime.to_string())          #                                         /1
# IO.inspect(String.Chars.Time.to_string())                   #                                         /1
# IO.inspect(String.Chars.URI.to_string())                    #                                         /1
# IO.inspect(String.Chars.Version.to_string())                #                                         /1
# IO.inspect(String.Chars.Version.Requirement.to_string())    #                                         /1
# ------------------------------------------------------------#------------------------------------------#
# IO.inspect(String.Normalizer.normalize())                   #                                         /2
# IO.inspect(String.Tokenizer.tokenize())                     #                                         /1
# ------------------------------------------------------------#------------------------------------------#
# IO.inspect(String.Unicode.codepoints())                     #                                         /1
# IO.inspect(String.Unicode.graphemes())                      #                                         /1
# IO.inspect(String.Unicode.length())                         #                                         /1
# IO.inspect(String.Unicode.next_codepoint())                 #                                         /1
# IO.inspect(String.Unicode.next_grapheme_size())             #                                         /1
# IO.inspect(String.Unicode.split_at())                       #                                         /2
IO.inspect(String.Unicode.version)                            # {10, 0, 0}                              /0
##########################################################################################################
# IO.inspect(Regex.CompileError.exception())                  #                                         /1
# IO.inspect(Regex.CompileError.message())                    #                                         /1
# IO.inspect(Regex.compile!())                                #                                         /1
# IO.inspect(Regex.compile!())                                #                                         /2
# IO.inspect(Regex.compile())                                 #                                         /1
# IO.inspect(Regex.compile())                                 #                                         /2
# IO.inspect(Regex.escape())                                  #                                         /1
# IO.inspect(Regex.match?())                                  #                                         /2
# IO.inspect(Regex.named_captures())                          #                                         /2
# IO.inspect(Regex.named_captures())                          #                                         /3
# IO.inspect(Regex.names())                                   #                                         /1
# IO.inspect(Regex.opts())                                    #                                         /1
# IO.inspect(Regex.re_pattern())                              #                                         /1
# IO.inspect(Regex.recompile!())                              #                                         /1
# IO.inspect(Regex.recompile())                               #                                         /1
# IO.inspect(Regex.regex?())                                  #                                         /1
# IO.inspect(Regex.replace())                                 #                                         /3
# IO.inspect(Regex.replace())                                 #                                         /4
# IO.inspect(Regex.run())                                     #                                         /2
# IO.inspect(Regex.run())                                     #                                         /3
# IO.inspect(Regex.scan())                                    #                                         /2
# IO.inspect(Regex.scan())                                    #                                         /3
# IO.inspect(Regex.source())                                  #                                         /1
# IO.inspect(Regex.split())                                   #                                         /2
# IO.inspect(Regex.split())                                   #                                         /3
# IO.inspect(Regex.version())                                 #                                         /0
##########################################################################################################
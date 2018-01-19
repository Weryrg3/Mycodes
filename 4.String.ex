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

# Break                   Casing                  Chars                   
# Normalizer              Tokenizer               Unicode                 
# capitalize/2            
# chunk/2
# downcase/2        
# ends_with?/2            equivalent?/2                 
# graphemes/1             jaro_distance/2                  
# match?/2                myers_difference/2      
# next_codepoint/1        next_grapheme/1         next_grapheme_size/1    
# normalize/2
# printable?/2            replace/3               replace/4               
# replace_leading/3       replace_prefix/3        replace_suffix/3        
# replace_trailing/3      slice/2                 
# slice/3                
# split/3                 split_at/2              splitter/2              
# splitter/3              starts_with?/2
# to_integer/2            trim/1                  
# trim/2                  trim_leading/1          trim_leading/2          
# trim_trailing/1         trim_trailing/2                
# upcase/2                valid?/1  

# String.Chars.           StringIO.




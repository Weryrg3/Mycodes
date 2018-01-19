############################# Integer ##############################
require Integer                                 #  Import para even e odd
IO.inspect(Integer.is_even(10))                 # true          /1    /&  &Integer.is_even/1
IO.inspect(Integer.is_odd(5))                   # true          /1    /&  &Integer.is_odd/1
IO.inspect(Integer.digits(1234))                # [1, 2, 3, 4]  /1    /&  &Integer.digits/1
IO.inspect(Integer.digits(10, 2))               # [1, 0, 1, 0]  /2     \ 10 base 2 ou seja 10 em binário em lista   /&  &Integer.digits/2
IO.inspect(Integer.to_string(1234))             # "1234"        /1
IO.inspect(Integer.to_string(10, 2))            # "1010"        /2     \ retorna valor na base em string
IO.inspect(Integer.to_charlist(-012))           # '-12'         /1
IO.inspect(Integer.to_charlist(10, 2))          # '1010'        /2     \ retorna valor na base em char
IO.inspect(Integer.floor_div(-99, 2))           # -50           /2     \ Divisão inteiro (...) faltante
IO.inspect(Integer.gcd(8, 4))                   # 4             /2     \ mostra o maior divisor de dois números 8 / 4 = 2, 4 / 4 = 1
IO.inspect(Integer.mod(6, -4))                  # -2            /2     \ resto divisão inteira parecido com rem() porém rem(6, - 4) = 2 pos
IO.inspect(Integer.parse("45.4"))               # {45, ".4"}    /1     \ string para valor inteiro retorn tuple | parse("34") T: {34, ""} 
IO.inspect(Integer.parse("45", 10))             # {45, ""}      /2     \ string e base, caso a base seja inferior retonr :error | parse("Awww++", 36) T: {509216, "++"}
IO.inspect(Integer.undigits([1, 2, 3]))         # 123           /1
IO.inspect(Integer.undigits([1, 0, 1, 0], 2))   # 10            /2     \ retorna list em um número na base dig
IO.puts("\nFloat")
############################# Float ################################
require Float
IO.inspect(Float.round(34.25))              # 34.0              /1
IO.inspect(Float.round(34.256, 2))          # 34.26             /2
IO.inspect(Float.ceil(34.25))               # 35.0              /1    \ Arrendonda para cima 0.5 = 1.0
IO.inspect(Float.ceil(34.256, 2))           # 34.26             /2
IO.inspect(Float.floor(34.25))              # 34.0              /1    \ Arrendonda para baixo 0.5 = 0.0
IO.inspect(Float.floor(34.256, 2))          # 34.25             /2
IO.inspect(Float.parse("34.256"))           # {34.256, ""}      /1
IO.inspect(Float.ratio(1.5))                # {3, 2}            /1     \ retorna valor float em inteiro 3/2 = 1.5 tuple
IO.inspect(Float.to_charlist(34.256))       # '34.256'          /1
IO.inspect(Float.to_string(34.256))         # "34.256"          /1
IO.puts("\nAtom")
############################# Atom ##################################
IO.inspect(Atom.to_charlist(:nome))        # 'nome'             /1
IO.inspect(Atom.to_string(:nome))          # "nome"             /1

IO.inspect(!false)                     # true
IO.inspect(1 != 1.0)                   # false Others       (</2, >/2, <=/2, >=/2, ==/2, ./2)
IO.inspect(1 !== 1.0)                  # true Others        ( ===/2 )
IO.inspect(Enum.map 1 .. 5, &(&1))     # [1, 2, 3, 4, 5]    (1 .. 5) (#im 1.Enum) ../2      #/2 dois argumentos sendo passados
IO.inspect(1 && 2)                     # 2                                /2
IO.inspect(1 || 2 )                    # 1                                /2
IO.inspect(-1 * 2 + 3 / +4 - 0.25)     # -1.5               (-/1, -/2, +/1, +/2, //2, */2 )
IO.inspect(abs(-4.5))                  # 4.5                              /1
IO.inspect(trunc(-4.5))                # -4                               /1
IO.inspect(tuple_size({-4.5, 4, 5}))   # 3                                /1
IO.inspect([1, 2] ++ [3, 4])           # [1, 2, 3, 4]                     /2
IO.inspect([1, 2, 3, 4] -- [3, 4])     # [1, 2]                           /2
IO.inspect(2..4)                       # 2..4                             /2
IO.inspect(<<15 :: size 3>>)           # <<7::size(3)>>     (<<>>/1, ::/2, *size/1) 
IO.inspect(a = 2)                      # 2                                /2
IO.inspect("Jun" <> "to")              # "Junto"                          /2
IO.inspect(1 in 1 .. 10)               # true     in                      /2
IO.inspect("abcd" =~ ~r/bc/)           # true     =~                      /2
IO.inspect(div(10, 6))                 # 1                                /3    \ Divisão inteira

# %/2
# %{}/1
# &/1
# ^/1
IO.inspect(is_atom(:atom))             # true                             /1
IO.inspect(is_boolean(false))          # true                             /1
IO.inspect(is_binary(<<1, 0>>))        # true   #Funciona também com string, pois toda string é binário   /1
IO.inspect(is_bitstring("Texto"))      # true                             /1
IO.inspect(is_float(4.5))              # true                             /1
IO.inspect(is_function(&(&1)))         # true                             /1
IO.inspect(is_integer(10))             # true                             /1
IO.inspect(is_list([1, 2, 3, 4]))      # true                             /1
IO.inspect(is_map(%{"RO" => "Ron"}))   # true                             /1
IO.inspect(is_nil(nil))                # true                             /1
IO.inspect(is_number(10))              # true                             /1
IO.inspect(is_tuple({1, 2, 3}))        # true                             /1
# IO.inspect(is_pid())                 # true                             /1
# IO.inspect(is_port())                # true                             /1
# IO.inspect(is_reference())           # true                             /1
#--------------------------------------#-----------------------------------#
#IO.inspect(__CALLER__)                #                                  /0
IO.inspect(__DIR__)                    # "/home/wesley/1.Wesley/Mycodes0" /0
#IO.inspect(__ENV__)                   #                                  /0    \ Retorna diversas funções e seus parametros 
IO.inspect(__MODULE__)                 # nil                              /0
#-------------------------------#------#-----#--###-----------------------####
#IO.inspect(binding())          #Terminal   /0  ### Só executa no terminal ###
#IO.inspect(breaks())           #Terminal   /0  ### Só executa no terminal ###
#IO.inspect(clear())            #Terminal   /0  ### Só executa no terminal ###
#IO.inspect(continue())         #Terminal   /0  ### Só executa no terminal ###
#IO.inspect(exports())          #Terminal   /0  ### Só executa no terminal ###
#IO.inspect(flush())            #Terminal   /0  ### Só executa no terminal ###
#IO.inscpect(h())               #Terminal   /0  ### Só executa no terminal ###
#IO.inscpect(ls())              #Terminal   /0  ### Só executa no terminal ###
#IO.inscpect(make_ref())        #Terminal   /0  ### Só executa no terminal ###
#IO.inscpect(i())               #Terminal   /0  ### Só executa no terminal ###
#IO.inscpect(node())            #Terminal   /0  ### Só executa no terminal ###
#IO.inscpect(open())            #Terminal   /0  ### Só executa no terminal ###
#IO.inscpect(pwd())             #Terminal   /0  ### Só executa no terminal ###
#IO.inscpect(recompile())       #Terminal   /0  ### Só executa no terminal ###
#IO.inscpect(remove_breaks())   #Terminal   /0  ### Só executa no terminal ###
#IO.inscpect(respawn())         #Terminal   /0  ### Só executa no terminal ###
#IO.inscpect(runtime_info())    #Terminal   /0  ### Só executa no terminal ###
#IO.inscpect(self())            #Terminal   /0  ### Só executa no terminal ###
#IO.inscpect(v())               #Terminal   /0  ### Só executa no terminal ###
#IO.inscpect(whereami())        #Terminal   /0  ### Só executa no terminal ###
#-------------------------------#------------#--###-----#-----------------####
# IO.inspect(__aliases__())                             #                 /1
# IO.inspect(__block__())                               #                 /1
# IO.inspect(alias!())                                  #                 /1
# IO.inspect(alias())                                   #                 /2
# IO.inspect(and())                                     #                 /2
IO.inspect(apply(fn x -> x * 2 end, [3]))               # 6               /2 
IO.inspect(apply(Enum, :reverse, [[1, 2, 3]]))          # [3, 2, 1]       /3 
# IO.inspect(b())                                       #                 /1
IO.inspect(binary_part("casa", 0, 3))                   # "cas"           /3    \ Pega caracteres da range dos valores passados 
IO.inspect(binding())                                   # [a: 2]          /1    \ Retornando valor da linha 15, ultimo passado, como key e value.
IO.inspect(bit_size(<<1, 1, 1, 1>>))                    # 32              /1    \ 8 + 8 + 8 + 8 
# IO.inspect(break!())                                  #                 /1
# IO.inspect(break!())                                  #                 /2
# IO.inspect(break!())                                  #                 /3
# IO.inspect(break!())                                  #                 /4
# IO.inspect(byte_size())                               #                 /1
# IO.inspect(c())                                       #                 /1
# IO.inspect(c())                                       #                 /2
# IO.inspect(case())                                    #                 /2
# IO.inspect(cd())                                      #                 /1
# IO.inspect(cond())                                    #                 /1
#------------------------------------------------------###---------------###
#IO.inspect(def())# def.ex /1                           #     Funções      #
#IO.inspect(def())# def.ex /2                           #     Funções      #
#IO.inspect(defdelegate())# def.ex /2                   #     Funções      #
#IO.inspect(defexception())# def.ex /1                  #     Funções      #
#IO.inspect(defguard())# def.ex /1                      #     Funções      #
#IO.inspect(defguardp())# def.ex /1                     #     Funções      #
#IO.inspect(defimpl())# def.ex /2                       #     Funções      #
#IO.inspect(defimpl())# def.ex /3                       #     Funções      #
#IO.inspect(defmacro())# def.ex  /1                     #     Funções      #
#IO.inspect(defmacro())# def.ex  /2                     #     Funções      #
#IO.inspect(defmacrop())# def.ex /1                     #     Funções      #
#IO.inspect(defmacrop())# def.ex /2                     #     Funções      #
#IO.inspect(defmodule())# def.ex /2                     #     Funções      #
#IO.inspect(defoverridable())# def.ex  /1               #     Funções      #
#IO.inspect(defp())# def.ex  /1                         #     Funções      #
#IO.inspect(defp())# def.ex  /2                         #     Funções      #
#IO.inspect(defprotocol())# def.ex /2                   #     Funções      #
#IO.inspect(defstruct())# def.ex /1                     #     Funções      #
#------------------------------------------------------###---------------###
IO.inspect(destructure([x, y], [1, 2, 3]))              # [1, 2]          /2    \ Pega lista mesmo não sendo do mesmo tamanho, caso haja váriaveis a mais retorna nil, nas variáveis sem partter
IO.inspect(elem({2, 4, 6}, 2))                          # 6               /2    \ Acessa um elemento da tupla usando sua posição em index
# IO.inspect(exit())                                    #                 /1
# IO.inspect(exports())                                 #                 /1
# IO.inspect(fn())                                      #                 /1
# IO.inspect(for())                                     #                 /1
# IO.inspect(function_exported?())                      #                 /3
# IO.inspect(get_and_update_in())                       #                 /2
# IO.inspect(get_and_update_in())                       #                 /3
# IO.inspect(get_in())                                  #                 /2
# IO.inspect(h())                                       #                 /1
# IO.inspect(hd())                                      #                 /1
# IO.inspect(i())                                       #                 /1
# IO.inspect(if())                                      #                 /2
# IO.inspect(import())                                  #                 /2
# IO.inspect(import_file())                             #                 /1
# IO.inspect(import_file())                             #                 /2
# IO.inspect(import_file_if_available())                #                 /1
# IO.inspect(import_if_available())                     #                 /1
# IO.inspect(import_if_available())                     #                 /2
# IO.inspect(inspect())                                 #                 /1
# IO.inspect(inspect())                                 #                 /2
# IO.inspect(is_function())                             #                 /2
# IO.inspect(is_pid())                                  #                 /1
# IO.inspect(is_port())                                 #                 /1
# IO.inspect(is_reference())                            #                 /1
# IO.inspect(l())                                       #                 /1
# IO.inspect(length())                                  #                 /1
# IO.inspect(ls())                                      #                 /1
# IO.inspect(macro_exported?())                         #                 /3
# IO.inspect(map_size())                                #                 /1
# IO.inspect(match?())                                  #                 /2
# IO.inspect(max())                                     #                 /2
# IO.inspect(min())                                     #                 /2
# IO.inspect(nl())                                      #                 /1
# IO.inspect(nl())                                      #                 /2
# IO.inspect(node())                                    #                 /1
# IO.inspect(not())                                     #                 /1 
# IO.inspect(open())                                    #                 /1
# IO.inspect(or())                                      #                 /2
# IO.inspect(pid())                                     #                 /1
# IO.inspect(pid())                                     #                 /3
# IO.inspect(pop_in())                                  #                 /1
# IO.inspect(pop_in())                                  #                 /2
# IO.inspect(put_elem())                                #                 /3
# IO.inspect(put_in())                                  #                 /2
# IO.inspect(put_in())                                  #                 /3
# IO.inspect(quote())                                   #                 /2
# IO.inspect(r())                                       #                 /1
# IO.inspect(raise())                                   #                 /1
# IO.inspect(raise())                                   #                 /2
# IO.inspect(receive())                                 #                 /1
# IO.inspect(ref())                                     #                 /1
# IO.inspect(ref())                                     #                 /4
# IO.inspect(rem())                                     #                 /2
# IO.inspect(remove_breaks())                           #                 /1
# IO.inspect(require())                                 #                 /2
# IO.inspect(reraise())                                 #                 /2
# IO.inspect(reraise())                                 #                 /3
# IO.inspect(reset_break())                             #                 /1
# IO.inspect(reset_break())                             #                 /3
# IO.inspect(round())                                   #                 /1
# IO.inspect(runtime_info())                            #                 /1
# IO.inspect(send())                                    #                 /2
# IO.inspect(sigil_C())                                 #                 /2
# IO.inspect(sigil_D())                                 #                 /2
# IO.inspect(sigil_N())                                 #                 /2
# IO.inspect(sigil_R())                                 #                 /2
# IO.inspect(sigil_S())                                 #                 /2
# IO.inspect(sigil_T())                                 #                 /2
# IO.inspect(sigil_W())                                 #                 /2
# IO.inspect(sigil_c())                                 #                 /2
# IO.inspect(sigil_r())                                 #                 /2
# IO.inspect(sigil_s())                                 #                 /2
# IO.inspect(sigil_w())                                 #                 /2
# IO.inspect(spawn())                                   #                 /1
# IO.inspect(spawn())                                   #                 /3
# IO.inspect(spawn_link())                              #                 /1
# IO.inspect(spawn_link())                              #                 /3
# IO.inspect(spawn_monitor())                           #                 /1
# IO.inspect(spawn_monitor())                           #                 /3
# IO.inspect(struct!())                                 #                 /1
# IO.inspect(struct!())                                 #                 /2
# IO.inspect(struct())                                  #                 /1
# IO.inspect(struct())                                  #                 /2
# IO.inspect(super())                                   #                 /1
# IO.inspect(t())                                       #                 /1
# IO.inspect(throw())                                   #                 /1
# IO.inspect(tl())                                      #                 /1
# IO.inspect(to_char_list())                            #                 /1
# IO.inspect(to_charlist())                             #                 /1
# IO.inspect(to_string())                               #                 /1
# IO.inspect(try())                                     #                 /1
# IO.inspect(unless())                                  #                 /2
# IO.inspect(unquote())                                 #                 /1
# IO.inspect(unquote_splicing())                        #                 /1
# IO.inspect(update_in())                               #                 /2
# IO.inspect(update_in())                               #                 /3
# IO.inspect(use())                                     #                 /1
# IO.inspect(use())                                     #                 /2
# IO.inspect(v())                                       #                 /1
IO.inspect(var!(x) = 3)                                 # 3               /1
IO.inspect(var!(x, :foo) = 333)                         # 333             /2    \ binding(:foo) [x: 1]
# IO.inspect(whereami())                                #                 /1
# IO.inspect(with())                                    #                 /1
# IO.inspect({}())                                      #                 /1
# IO.inspect(|>())                                      #                 /2
# ------------------------------------------------------#------------------#
# IO.inspect(Kernel.CLI.main())                         #                 /1
# IO.inspect(Kernel.CLI.run())                          #                 /1
# IO.inspect(Kernel.CLI.run())                          #                 /2
# ------------------------------------------------------#------------------#
# IO.inspect(Kernel.ErrorHandler.ensure_compiled())     #                 /2
# IO.inspect(Kernel.ErrorHandler.ensure_loaded())       #                 /1
# IO.inspect(Kernel.ErrorHandler.undefined_function())  #                 /3
# IO.inspect(Kernel.ErrorHandler.undefined_lambda())    #                 /3
# ------------------------------------------------------#------------------#
# IO.inspect(Kernel.LexicalTracker.dest())              #                 /1
# IO.inspect(Kernel.LexicalTracker.handle_cast())       #                 /2
# IO.inspect(Kernel.LexicalTracker.init())              #                 /1
# IO.inspect(Kernel.LexicalTracker.remote_dispatches()) #                 /1
# IO.inspect(Kernel.LexicalTracker.remote_references()) #                 /1
#-------------------------------------------------------#------------------# 
# IO.inspect(Kernel.ParallelCompiler.async())           #                 /1
# IO.inspect(Kernel.ParallelCompiler.compile())         #                 /1
# IO.inspect(Kernel.ParallelCompiler.compile())         #                 /2
# IO.inspect(Kernel.ParallelCompiler.compile_to_path()) #                 /2
# IO.inspect(Kernel.ParallelCompiler.compile_to_path()) #                 /3
# IO.inspect(Kernel.ParallelCompiler.require())         #                 /1
# IO.inspect(Kernel.ParallelCompiler.require())         #                 /2
#-------------------------------------------------------#------------------#
# IO.inspect(Kernel.ParallelRequire.files())            #                 /1
# IO.inspect(Kernel.ParallelRequire.files())            #                 /2
# IO.inspect(Kernel.Typespec.beam_callback())           #                 /1
# IO.inspect(Kernel.Typespec.beam_spec())               #                 /1
# IO.inspect(Kernel.Typespec.beam_type())               #                 /1
# IO.inspect(Kernel.Typespec.defcallback())             #                 /1
# IO.inspect(Kernel.Typespec.defines_callback?())       #                 /3
# IO.inspect(Kernel.Typespec.defines_spec?())           #                 /3
# IO.inspect(Kernel.Typespec.defines_type?())           #                 /3
# IO.inspect(Kernel.Typespec.defmacrocallbac())         #                 /1
# IO.inspect(Kernel.Typespec.defopaque())               #                 /1
# IO.inspect(Kernel.Typespec.defspec())                 #                 /1
# IO.inspect(Kernel.Typespec.deftype())                 #                 /1
# IO.inspect(Kernel.Typespec.deftype())                 #                 /1
# IO.inspect(Kernel.Typespec.spec_to_ast())             #                 /2
# IO.inspect(Kernel.Typespec.type_to_ast())             #                 /1
# IO.inspect(Kernel.Utils.announce_struct())            #                 /1
# IO.inspect(Kernel.Utils.defdelegate())                #                 /2
# IO.inspect(Kernel.Utils.defguard())                   #                 /2 
# IO.inspect(Kernel.Utils.defguard())                   #                 /3
# IO.inspect(Kernel.Utils.defstruct())                  #                 /2
# IO.inspect(Kernel.Utils.destructure())                #                 /2
# IO.inspect(Kernel.Utils.raise())                      #                 /1
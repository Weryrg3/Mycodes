IO.inspect(!false)                     # true
IO.inspect(1 != 1.0)                   # false Others       (</2, >/2, <=/2, >=/2, ==/2,)
IO.inspect(1 !== 1.0)                  # true Others        ( ===/2 )
IO.inspect(Enum.map 1 .. 5, &(&1))     # [1, 2, 3, 4, 5]    (1 .. 5) (#im 1.Enum) ../2      #/2 dois argumentos sendo passados
IO.inspect(1 && 2)                     # 2                                /2
IO.inspect(1 || 2 )                    # 1                                /2
IO.inspect(-1 * 2 + 3 / +4 - 0.25)     # -1.5               (-/1, -/2, +/1, +/2, //2, */2 )
IO.inspect(abs(-4.5))                  # 4.5                              /1
IO.inspect(trunc(-4.5))                # -4                               /1
IO.inspect(tuple_size({-4.5, 4, 5}))   # 3                                /1

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

#IO.inspect(__CALLER__)                #                                  /0
IO.inspect(__DIR__)                    # "/home/wesley/1.Wesley/Mycodes0" /0
#IO.inspect(__ENV__)                   #                                  /0    \ Retorna diversas funções e seus parametros 
IO.inspect(__MODULE__)                 # nil                              /0
# binding/0
# breaks/0
# clear/0
# continue/0


# %/2
# %{}/1
# &/1
# ++/2
# --/2
# ../2
# ./2
# ::/2
# <<>>/1
# <>/2
# =/2
# =~/2
# @/1
# ^/1

# __aliases__/1                 __block__/1                   
# alias!/1                      
# alias/2                       and/2                         
# apply/2                       apply/3                       
# b/1                           binary_part/3                 
#binding/1                     
# bit_size/1                    break!/1                      
# break!/2                      break!/3                      
# break!/4                      
# byte_size/1                   c/1                           
# c/2                           case/2                        
# cd/1                          
# cond/1                        
# def/1                         def/2                         
# defdelegate/2                 defexception/1                
# defguard/1                    defguardp/1                   
# defimpl/2                     defimpl/3                     
# defmacro/1                    defmacro/2                    
# defmacrop/1                   defmacrop/2                   
# defmodule/2                   defoverridable/1              
# defp/1                        defp/2                        
# defprotocol/2                 defstruct/1                   
# destructure/2                 div/2                         
# elem/2                        exit/1                        
# exports/0                     exports/1                     
# flush/0                       fn/1                          
# for/1                         function_exported?/3          
# get_and_update_in/2           get_and_update_in/3           
# get_in/2                      h/0                           
# h/1                           hd/1                          
# i/0                           i/1                           
# if/2                          import/2                      
# import_file/1                 import_file/2                 
# import_file_if_available/1    import_if_available/1         
# import_if_available/2         in/2                          
# inspect/1                     inspect/2                     
# is_function/2
# is_pid/1                      is_port/1                     
# is_reference/1
# l/1                           length/1                      
# ls/0                          ls/1                          
# macro_exported?/3             make_ref/0                    
# map_size/1                    match?/2                      
# max/2                         min/2                         
# nl/1                          nl/2                          
# node/0                        node/1                        
# not/1                         open/0                        
# open/1                        or/2                          
# pid/1                         pid/3                         
# pop_in/1                      pop_in/2                      
# put_elem/3                    put_in/2                      
# put_in/3                      pwd/0                         
# quote/2                       r/1                           
# raise/1                       raise/2                       
# receive/1                     recompile/0                   
# ref/1                         ref/4                         
# rem/2                         remove_breaks/0               
# remove_breaks/1               require/2                     
# reraise/2                     reraise/3                     
# reset_break/1                 reset_break/3                 
# respawn/0                     round/1                       
# runtime_info/0                runtime_info/1                
# self/0                        send/2                        
# sigil_C/2                     sigil_D/2                     
# sigil_N/2                     sigil_R/2                     
# sigil_S/2                     sigil_T/2                     
# sigil_W/2                     sigil_c/2                     
# sigil_r/2                     sigil_s/2                     
# sigil_w/2                     spawn/1                       
# spawn/3                       spawn_link/1                  
# spawn_link/3                  spawn_monitor/1               
# spawn_monitor/3               struct!/1                     
# struct!/2                     struct/1                      
# struct/2                      super/1                       
# t/1                           throw/1                       
# tl/1                          to_char_list/1                
# to_charlist/1                 to_string/1                   
# try/1                         
# unless/2                     
# unquote/1                     unquote_splicing/1            
# update_in/2                   update_in/3                   
# use/1                         use/2                         
# v/0                           v/1                           
# var!/1                        var!/2                        
# whereami/0                    whereami/1                    
# with/1                        {}/1                          
# |>/2

#Kernel.
# Kernel.SpecialForms.    Kernel.ParallelCompiler.  Kernel.ParallelRequire.
# !/1                     !=/2                    !==/2                   
# &&/2                    */2                     ++/2                    
# +/1                     +/2                     --/2                    
# -/1                     -/2                     ../2                    
# //2                     </2                     <=/2                    
# <>/2                    ==/2                    ===/2                   
# =~/2                    >/2                     >=/2                    
# @/1                     CLI                     ErrorHandler            
# LexicalTracker          ParallelCompiler        ParallelRequire         
# SpecialForms            Typespec                Utils                   
# abs/1                   alias!/1                and/2                   
# apply/2                 apply/3                 binary_part/3           
# binding/0               binding/1               bit_size/1              
# byte_size/1             def/1                   def/2                   
# defdelegate/2           defexception/1          defguard/1              
# defguardp/1             defimpl/2               defimpl/3               
# defmacro/1              defmacro/2              defmacrop/1             
# defmacrop/2             defmodule/2             defoverridable/1        
# defp/1                  defp/2                  defprotocol/2           
# defstruct/1             destructure/2           div/2                   
# elem/2                  exit/1                  function_exported?/3    
# get_and_update_in/2     get_and_update_in/3     get_in/2                
# hd/1                    if/2                    in/2                    
# inspect/1               inspect/2               is_atom/1               
# is_binary/1             is_bitstring/1          is_boolean/1            
# is_float/1              is_function/1           is_function/2           
# is_integer/1            is_list/1               is_map/1                
# is_nil/1                is_number/1             is_pid/1                
# is_port/1               is_reference/1          is_tuple/1              
# length/1                macro_exported?/3       make_ref/0              
# map_size/1              match?/2                max/2                   
# min/2                   node/0                  node/1                  
# not/1                   or/2                    pop_in/1                
# pop_in/2                put_elem/3              put_in/2                
# put_in/3                raise/1                 raise/2                 
# rem/2                   reraise/2               reraise/3               
# round/1                 self/0                  send/2                  
# sigil_C/2               sigil_D/2               sigil_N/2               
# sigil_R/2               sigil_S/2               sigil_T/2               
# sigil_W/2               sigil_c/2               sigil_r/2               
# sigil_s/2               sigil_w/2               spawn/1                 
# spawn/3                 spawn_link/1            spawn_link/3            
# spawn_monitor/1         spawn_monitor/3         struct!/1               
# struct!/2               struct/1                struct/2                
# throw/1                 tl/1                    to_charlist/1           
# to_string/1             trunc/1                 tuple_size/1            
# unless/2                update_in/2             update_in/3             
# use/1                   use/2                   var!/1                  
# var!/2                  |>/2                    ||/2 


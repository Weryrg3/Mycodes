# Find the library functions to do the following, and then use each in iex.
# (If the word Elixir or Erlang appears at the end of the challenge, then you’ll
# find the answer in that set of libraries.)
# – Convert a float to a string with two decimal digits. (Erlang)
# – Get the value of an operating-system environment variable. (Elixir)
# - Retorna o componente de extensão de um nome de arquivo (então retorna .exs se for fornecido
# "dave / test.exs"). (Elixir)
# – Return the process’s current working directory. (Elixir)
# - Converta uma string contendo JSON nas estruturas de dados do Elixir. (Somente
# encontrar; não instale.)
# – Execute a command in your operating system’s shell.

#IO.inspect(Float.to_string(Float.round(4.6666, 2)))         
Float.round(4.655, 2) |> Float.to_string() |> IO.inspect()   # - Converta um flutuador em uma string com dois dígitos decimais. (Erlang)
IO.inspect(System.cwd())                #Current working directory
#IO.inspect(System.get_env())           #Returns all system environment variables
IO.inspect(System.get_env("HOSTNAME"))  #Returns the value of the given environment variable
#ls

# – Return the extension component of a file name (so return .exs if given "dave/test.exs" ). (Elixir)
# – Convert a string containing JSON into Elixir data structures. (Just find; don’t install.)

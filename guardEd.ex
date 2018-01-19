require Integer
defmodule Guard do
  # def o_que_e(x) when is_number(x) do
  def what_is(x) when is_number(x) do
    IO.puts("#{x} is a number")
  end

  def what_is(x) when is_list(x) do
    IO.puts("#{inspect(x)} is a list\n")
    # IO.puts "#{x} is a list" #^A^B^C
  end

  def what_is(x) when is_binary(x) or is_bitstring(x) do
    IO.puts("#{inspect(x)} is a string or binary")
  end

  def what_is(x) when is_atom(x) do
    IO.puts("\n#{x} is an atom\n")
  end

  def what_is(x) when is_map(x) do
    IO.puts("#{inspect(x)} is a map")
  end

  def type_number(x) when is_integer(x) do
    IO.puts("  #{x} is an integer number")
  end

  def type_number(x) when is_float(x) do
    IO.puts("  #{x} is a float number")
  end
   #require Interger 1 primeira linha /\ 
  def number_par_impar(x) when Integer.is_even(x) do   #def number_par_impar(x) when rem(x, 2) == 0 do
    IO.puts("  #{x} is a number even 'par'")
  end

  def number_par_impar(x) when not (rem(x, 2) == 0) do
    IO.puts("  #{x} is a number odd 'impar'\n")
  end
end

# Number
Guard.what_is(10)
# Number integer
Guard.type_number(10)
# Number float
Guard.type_number(10.0)
# Number odd
Guard.number_par_impar(10)
# Number even
Guard.number_par_impar(15)
# String 
Guard.what_is("10")
# Binary
Guard.what_is(<<0, 1>>)
# Atom
Guard.what_is(:teste)
# List
Guard.what_is([1, 5, 10])
# Map
Guard.what_is(%{"Ro" => "Rondônia", "Ji" => "Ji-paraná"})
Guard.what_is(%{a: "A", b: "B"})

# is_boolean/1      is_function/1     is_function/2     is_integer/1      
# is_nil/1          is_pid/1          is_port/1         
# is_reference/1    is_tuple/1 
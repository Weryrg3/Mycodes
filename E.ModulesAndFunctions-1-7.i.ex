# Pág 49 Livro 1.3

defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: double(double(n))   # double(double(n)) = (2 * (n * 2))
end

IO.puts(Times.double(10))
IO.puts(Times.triple(10))
IO.puts(Times.quadruple(10))
#########################################################################################

# Pág 51 Livro 1.3
defmodule Soma do
  def sum(0), do: 0
  def sum(n), do: n + sum(n - 1)
  # IO.puts("#{n} + (#{n} - 1)") 

  def gcd(x, y) do
    # [1, 2, 5, 10]
    div_x = for divisor <- Enum.map(1..x, & &1), rem(x, divisor) == 0, do: divisor
    # [1, 3, 5, 15]
    div_y = for divisor <- Enum.map(1..y, & &1), rem(y, divisor) == 0, do: divisor

    maior_div =
      for maiorX <- div_x,
          maiorY <- div_y,
          # [1, 3, 5, 15] e [1, 2, 5, 10]
          maiorX == maiorY,
          # [1, 5]
          do: maiorY

    # [5]
    Enum.max(maior_div)
  end
end

IO.inspect(Soma.sum(10))
IO.inspect(Soma.gcd(10, 15))
# Soma.gcd(10, 15)
###########################################################################################################################

# Pág 56 Livro 1.3
defmodule Chop do
  def guess(number, range) do           # Execução inicial recebe um número e uma range
    first_guess = find_guess(range)     # Variável first recebe o retorno da range -> 0-0
    guess(number, range, first_guess)   # busca função guess passando numero, range, e guess retornado anteriormente -> 0-1
  end

  defp guess(number, _, guess) when number == guess do    # verifica se o número é igual guess  -> 0-1
    IO.puts("Is it #{guess}")
    guess
  end

  defp guess(number, first..last, guess) do   # caso a função de cima falhe o valor entra nessa função -> 0-1
    IO.puts("Is it #{guess}")

    next_range =                
      if guess > number do  # ex: 500 > 273
        first..(guess - 1)  # 1 .. 499
      else
        (guess + 1)..last   # 501 .. 1000
      end

    next_guess = find_guess(next_range)
    guess(number, next_range, next_guess)
  end

  defp find_guess(first..last) do   # retorno da range -> 0-0
    div(first + last, 2)            # retorna o número do meio
  end
end

# Chop.guess(273, 1..1000)
##########################################################################################################################################

# incomplete
# Pág 63 Livro 1.3

#IO.inspect(Float.to_string(Float.round(4.6666, 2)))         
Float.round(4.655, 2) |> Float.to_string() |> IO.inspect()   # - Converta um flutuador em uma string com dois dígitos decimais. (Erlang)
IO.inspect(System.cwd())                #Current working directory
#IO.inspect(System.get_env())           #Returns all system environment variables
IO.inspect(System.get_env("HOSTNAME"))  #Returns the value of the given environment variable
#ls
IO.inspect(Path.extname("test.exs"))    # Internet
# – Convert a string containing JSON into Elixir data structures. (Just find; don’t install.)
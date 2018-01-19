# ➤ Exercise: ModulesAndFunctions-6
# I’m thinking of a number between 1 and 1000....
# The most efficient way to find the number is to guess halfway between
# the low and high numbers of the range. If our guess is too big, then the
# answer lies between the bottom of the range and one less than our guess.
# If our guess is too small, then the answer lies between one more than our
# guess and the end of the range.
# Your API will be guess(actual, range) , where range is an Elixir range.
# Your output should look similar to this:
# iex> Chop.guess(273, 1..1000)
# Is it 500
# Is it 250
# Is it 375
# Is it 312
# Is it 281
# Is it 265
# Is it 273
# 273
# Hints:
# – You may need to implement helper functions with an additional
# parameter (the currently guessed number).
# – The div(a,b) function performs integer division.
# – Guard clauses are your friends.
# – Patterns can match the low and high parts of a range ( a..b=4..8 ).

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
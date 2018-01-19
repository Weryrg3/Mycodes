# Exercício: ModulesAndFunctions-4
# Implementar e executar uma soma de função (n) que usa recursão para calcular o
# soma dos inteiros de 1 a n. Você precisará escrever esta função dentro
# um módulo em um arquivo separado. Em seguida, carregue iex, compile esse arquivo e tente
# sua função.

# ➤ Exercício: ModulesAndFunctions-5
# Escreva uma função gcd (x, y) que encontre o maior divisor comum entre
# dois inteiros não negativos. Algebraicamente, gcd (x, y) é x se y é zero; é gcd (y, rem (x, y)) caso contrário.

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
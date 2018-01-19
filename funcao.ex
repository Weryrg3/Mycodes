number = fn
  {2, 1} -> "Você digitou 2 e 1"
  {1, 2} -> "Você digitou 1 e 2"
  {3, 3} -> "Você digitou dois números 3"
  {_, 3} -> "Você digitou um número 3"
  {n1, n2} -> "Você digitou #{n1} e #{n2}" <> "!"
end

# Lembre - se, se você chamar uma tupla, deve ser passado uma tupla como argumento.
IO.inspect(number.({1, 4}))

number = fn
  1 -> "Você digitou #{1}"
  2 -> "Você digitou 2 e 1"
  3 -> "Você digitou um números 3"
  _ -> "Você digitou um número 3"
end

IO.inspect(number.(1))

defmodule Saudar do
  def para1(nome, saudacao) do
    fn
      # ^ verifica o match, porém não reatribui a váriavel
      ^nome -> "#{saudacao} #{nome}"
      _ -> "Eu não te conheço"
    end
  end

  def para2(nome, saudacao) do
    fn
      # ^ verifica o match, porém não reatribui a váriavel
      nome -> "#{saudacao} #{nome}" # Recebe Warning
      _ ->"Eu não te conheço"
    end
  end
end

cumprimentar = Saudar.para1("Wesley", "Oi!")
IO.puts(cumprimentar.("Wesley"))
IO.puts(cumprimentar.("dave"))

cumprimentar = Saudar.para2("Wesley", "Oi!")
IO.puts(cumprimentar.("Wesley"))
IO.puts(cumprimentar.("dave"))
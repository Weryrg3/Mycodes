# Learn PDF Exercicios Pág 30 - 31

# • Crie uma expressão que resolva o seguinte problema: 
# Sarah comprou dez fatias de pão por dez centavos cada, 
# três garrafas de leite por dois dólares cada, e um 
# bolo por quinze dólares. Quantos dólares gastou Sarah?

# Bob percorreu 200 km em quatro horas. Usando variáveis, 
# imprima uma mensagem mostrando sua distância de viagem, 
# tempo e velocidade média.

# • Construa uma função anônima que aplica um imposto de 12% a um determinado preço.
# Ele deve imprimir uma mensagem com o novo preço e valor fiscal. 
# Vincule a função anônima a uma variável chamada apply_tax. Você deve usar o apply_tax
# com Enum.each / 2, como o exemplo abaixo. Não se preocupe com Enum.each / 2 agora; 
# você vai ver isso em detalhes no Capítulo 5, Usando funções de ordem superior, na página 83.
# Você só precisa saber que Enum.each / 2 executará a aplicação_tax em cada item de uma lista.

defmodule Tudo do
  defmodule Ex1 do
    def compra(bread, bottles_milk, cake) do
      price_bread = bread * 0.10
      price_bottles_milk = bottles_milk * 2
      price_cake = cake * 15
      total_amount = price_bread + price_bottles_milk + price_cake
      "R$ #{total_amount} dollars"
    end
  end

  defmodule Ex2 do
    def bob(distancia, hora) do
      "Distância da viagem #{distancia} km\nTempo de viagem #{hora} horas\nVelocidade média: #{
        distancia / hora
      } km/h"
    end
  end

  defmodule MatchstickFactory do
    def boxes(num) do
      {big, big_rem} = {div(num, 50), rem(num, 50)}
      {medium, medium_rem} = {div(big_rem, 20), rem(big_rem, 20)}
      {small, small_rem} = {div(medium_rem, 5), rem(medium_rem, 5)}
      remaining_matchsticks = small_rem

      %{big: big, medium: medium, remaining_matchsticks: remaining_matchsticks, small: small}
      # %{big: 1, medium: 2, remaining_matchsticks: 3, small: 1}
      # %{big: 0, medium: 1, remaining_matchsticks: 4, small: 3}
    end
  end
end

# Ex3
apply_tax = fn price ->
  IO.puts("Price: #{Float.round(price * (1 + 0.12), 2)} - Tax: #{Float.round(price * 0.12, 2)}")
end

IO.inspect(Tudo.Ex1.compra(10, 3, 1))
IO.puts(Tudo.Ex2.bob(200, 4))
Enum.each([12.5, 30.99, 250.49, 18.80], apply_tax)
IO.inspect(Tudo.MatchstickFactory.boxes(98))


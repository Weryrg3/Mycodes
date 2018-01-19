# Crie uma calculadora de dica simples. O programa deve alertar
# para um valor de conta e uma taxa de propina. O programa deve computar
# a ponta e, em seguida, exiba tanto a ponta quanto a quantidade total de
# a conta.

# Example output:
# What is the bill? $200
# What is the tip percentage? 15
# The tip is $30.00
# The total is $230.00

defmodule Calc do
  def first() do    # Primeira cláusula que será executada, e (loop)
    bill = IO.gets("What is the bill? ")
    percentage = IO.gets("What is the tip percentage? ")
    test(bill, percentage)  # Segunda cláusula que será executada cláusula de teste de valores
  end

  defp test(bill, percentage) do
    case {Float.parse(bill), Float.parse(percentage)} do
      {:error, _} ->
        IO.puts("\nRetype wrong bill!!!")
        first()

      {_, :error} ->
        IO.puts("\nRetype wrong percentage!!!")
        first()

      {{bill, _}, {percentage, _}} ->
        if bill < 0 or percentage < 0 do
          IO.puts("\nNegative value typed\nRetype wrong!!!")
          first()
        else
          calculator(bill, percentage)
        end
    end
  end

  defp calculator(bill, percentage) do  # Cláusula final caso final caso teste retorne verdadeiro, essa cláusula irá calcular e imprimir
    "\nThe tip is $#{bill * percentage / 100} \nThe total is $#{
      Float.round(bill * (1 + percentage / 100), 2)
    }\n"
  end
end

IO.puts(Calc.first())

# • Em vez de exibir uma mensagem de erro e sair da
# programa, continue pedindo ao usuário a entrada correta até
# é fornecido.
# • Não permita que o usuário digite um número negativo.
# • Quebre o programa em funções que fazem o computa-
# ções.
# • Implementar este programa como um programa GUI que automatize
# Atualiza os valores quando algum valor muda.
# • Em vez do usuário inserir o valor da dica como um
# percentual, faça com que o usuário arraste um controle deslizante que
# facção com o servidor, usando um intervalo entre 5% e
# 20%.


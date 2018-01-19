defmodule Tudo do
  defmodule RPG do
    def rpg(map) do
      %{strength: strength_value, dexterity: dexterity_value, intelligence: intelligence_value} =
        map

      strength_value = strength_value * 2
      dexterity_value = dexterity_value * 3
      intelligence_value = intelligence_value * 3
      %{strength: strength_value, dexterity: dexterity_value, intelligence: intelligence_value}
    end
  end

  defmodule TicTacToe do
    def winner({w, w, w, _, _, _, _, _, _}), do: {:winner, w}
    def winner({_, _, _, w, w, w, _, _, _}), do: {:winner, w}
    def winner({_, _, _, _, _, _, w, w, w}), do: {:winner, w}

    def winner({w, _, _, w, _, _, w, _, _}), do: {:winner, w}
    def winner({_, w, _, _, w, _, _, w, _}), do: {:winner, w}
    def winner({_, _, w, _, _, w, _, _, w}), do: {:winner, w}

    def winner({w, _, _, _, w, _, _, _, w}), do: {:winner, w}
    def winner({_, _, w, _, w, _, w, _, _}), do: {:winner, w}
    def winner({_, _, _, _, _, _, _, _, _}), do: :no_winner
  end

# • Crie uma função que calcula o imposto de renda seguindo estas regras: a
# O salário igual ou inferior a US $ 2.000 é gratuito; abaixo ou igual a $ 3,000 paga 5%;
# abaixo ou igual a $ 6,000 paga 10%; e maior paga 15%.

  defmodule IncomeTax do
    import Float, only: [round: 2]
    def tax(salary) when salary <= 2_000, do: "Salary: US $ #{salary}, Tax: US $ #{0.00}, Total: US $ #{salary}"
    def tax(salary) when salary <= 3_000, do: "Salary: US $ #{salary}, Tax: US $ #{salary * (5/100)},  Total: US $ #{round(salary * (1 + 5/100), 2)}"
    def tax(salary) when salary <= 6_000, do: "Salary: US $ #{salary}, Tax: US $ #{salary * (10/100)}, Total: US $ #{round(salary * (1 + 10/100), 2)}"
    def tax(salary) when salary  > 6_000, do: "Salary: US $ #{salary}, Tax: US $ #{salary * (15/100)}, Total: US $ #{round(salary * (1 + 15/100), 2)}"
  end

  defmodule ConsultIncome do
    def consult(salary) when is_float(salary) or is_integer(salary), do: IncomeTax.tax(salary)
    def consult(_), do: "That is not a valid number!!!"
  end
end

IO.inspect(Tudo.RPG.rpg(%{strength: 10, dexterity: 25, intelligence: 40}))

IO.inspect(Tudo.TicTacToe.winner({
  :o, :o, :x,
  :o, :x, :o,
  :o, :o, :x
  }))

IO.inspect(Tudo.TicTacToe.winner({
    :x, :o, :x,
    :o, :x, :o,
    :o, :x, :o
  }))

IO.inspect(Tudo.IncomeTax.tax(5050.50))
IO.inspect(Tudo.ConsultIncome.consult("2000"))
IO.inspect(Tudo.ConsultIncome.consult(2000))
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
  # Primeira cláusula que será executada, e (loop)
  def first() do
    bill = IO.gets("What is the bill? ")
    percentage = IO.gets("What is the tip percentage? ")
    # Segunda cláusula que será executada cláusula de teste de valores
    test(bill, percentage)
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

  # Cláusula final caso final caso teste retorne verdadeiro, essa cláusula irá calcular e imprimir
  defp calculator(bill, percentage) do
    "\nThe tip is $#{bill * percentage / 100} \nThe total is $#{
      Float.round(bill * (1 + percentage / 100), 2)
    }\n"
  end
end

defmodule Hello do
  def greet() do
    greet(String.trim(IO.gets("What is your name? ")))
  end

  defp greet(name) when is_binary(name) do
    IO.puts("Hello, #{name}, nice to meet you!")
  end
end

# Hello.greet()

# IO.puts("Hello, " <> String.trim(IO.gets("What is your name? ")) <> ", nice to meet you!")

defmodule String1 do
  def string1() do
    string1(String.trim(IO.gets("What is the input string? ")))
  end

  defp string1(name) do
    IO.puts("#{name} has #{String.length(name)} characters.")
  end
end

# String1.string1()

# No functions

# a = String.trim(IO.gets("What is the quote? ")) ###############################################################################################################
# b = String.trim(IO.gets("Who said it? "))
# IO.puts("#{b} says, #{a}")

# What is the quote? These aren't the droids you're looking for.
# Who said it? Obi-Wan Kenobi
# Obi-Wan Kenobi says, "These aren't the droids you're looking for." #############################################################################################

# [noun, verb, adjective, adverb] =
#   String.split(
#     IO.gets("Enter a noun: ") <>
#       IO.gets("Enter a verb: ") <> IO.gets("Enter an adjective: ") <> IO.gets("Enter an adverb: ")
#   )

# IO.puts(String.trim("Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"))

# Functions

defmodule Math do
  def math() do
    check(
      String.trim(IO.gets("What is the first number? ")),
      String.trim(IO.gets("What is the second number? "))
    )
  end

  defp math(number1, number2) do
    IO.puts(
      "#{number1} + #{number2} = #{number1 + number2}\n#{number1} - #{number2} = #{
        number1 - number2
      }\n#{number1} * #{number2} = #{number1 * number2}\n#{number1} / #{number2} = #{
        div(number1, number2)
      }"
    )
  end

  defp check(number1, number2) do
    case {Integer.parse(number1), Integer.parse(number2)} do
      {:error, _} ->
        IO.puts("First number wrong")
        math()

      {_, :error} ->
        IO.puts("Second number wrong")
        math()

      {{number1, _}, {number2, _}} ->
        if number1 < 0 or number2 < 0 do
          IO.puts("Value negative typed")
          math()
        else
          math(number1, number2)
        end
    end
  end
end

# Math.math()

# No functions

defmodule Retirement do
  def retirement() do
    {age, _} = Integer.parse(IO.gets("What is your current age? "))
    {retire, _} = Integer.parse(IO.gets("At what age would you like to retire? "))
    retirement(age, retire)
  end

  def retirement(age, retire) do
    date = Date.utc_today()
    date = date.year
    retire = retire - age

    if retire < 1 do
      IO.puts("You can retire already.")
    else
      IO.puts("You have #{retire} years left until you can retire.")
      IO.puts("It's #{date}, so you can retire in #{date + retire}.")
    end
  end
end

# Retirement.retirement()
# What is your current age? 25
# At what age would you like to retire? 65
# You have 40 years left until you can retire.
# It's 2015, so you can retire in 2055.

defmodule Area do
  def feet() do
    {length, _} = Integer.parse(IO.gets("What is the length of the room in feet? "))
    {width, _} = Integer.parse(IO.gets("What is the width of the room in feet? "))
    feet(length, width)
  end

  defp feet(length, width) do
    IO.puts(
      "You entered dimensions of #{length} feet by #{width} feet.\nThe area is\n#{length * width} square feet\n#{
        Float.round(length * width * 0.09290304, 3)
      } square meters"
    )
  end
end

# Area.feet()

defmodule Pizza do
  def pieces() do
    {people, _} = Integer.parse(IO.gets("How many people? "))
    {pizzas, _} = Integer.parse(IO.gets("How many pizzas do you have? "))
    pieces(people, pizzas)
  end

  defp pieces(people, pizzas) do
    {pieces, rest} = {div(8 * pizzas, people), rem(8 * pizzas, people)}

    IO.puts(
      "#{people} people with #{pizzas} pizzas\nEach person gets #{pieces} pieces of pizza.\nThere are #{
        rest
      } leftover pieces."
    )
  end
end

# Pizza.pieces()

defmodule Gallons do
  def gallons() do
    {size, _} = Integer.parse(IO.gets("Enter size in feet: "))
    gallons(size)
  end

  def gallons(size) do
    IO.puts(
      "You will need to purchase #{trunc(Float.ceil(size / 350))} gallons of\npaint to cover #{
        size
      } square feet."
    )
  end
end

# # Gallons.gallons()

defmodule Checkout do
  defp parse(price, quantity) do
    case {Integer.parse(price), Float.parse(quantity)} do
      {:error, _} -> 
        IO.puts("Price wrong") 
        :error

      {_, :error} -> 
        IO.puts("Quantity wrong")
        :error

      {{price, _}, {quantity, _}} ->
        if price < 0 or quantity < 0 do
          IO.puts("Value negative typed")
          :error
        else
          {:ok, price, quantity}
        end
    end
  end

  defp read(n) do
    price = IO.gets("Enter the price of item #{n}: "
    if price == "\n" do
      :stop
    else
      quantity = IO.gets("Enter the quantity of item #{n}: "
      case parse(price, quantity) do 
        :error -> read(n)
        {:ok, price, quantity} -> {:ok, price * quantity}
      end
    end
  end

  defp guard() do
    [ | read(n + 1)]
  end
end


  #   def price() do
  #     check(IO.gets("Enter the price of item 1: "), IO.gets("Enter the quantity of item 1: "), 1)
  #   end

  #   defp check(price, quantity, n) do
  #     case {Integer.parse(price), Float.parse(quantity)} do
  #       {:error, _} ->
  #         IO.puts("Price wrong")
  #         price(price, quantity, n)

  #       {_, :error} ->
  #         IO.puts("Quantity wrong")
  #         price(price, quantity, n)

  #       {{price, _}, {quantity, _}} ->
  #         if price < 0 or quantity < 0 do
  #           IO.puts("Value negative typed")
  #           price(price, quantity, n)
  #         else
  #           guard(price, quantity, n)
  #         end
  #     end
  #   end

  #   defp price(_price, quantity, n) do
  #     price = IO.gets("Enter the price of item #{n}: ")

  #     if price == "\n" do
  #       guard(0, quantity, n)
  #     else
  #       quantity = IO.gets("Enter the quantity of item #{n}: ")
  #       check(price, quantity, n)
  #     end
  #   end

  #   defp guard(0, _, _), do: []

  #   defp guard(price, quantity, n) do
  #     [price * quantity | price(price, quantity, n + 1)]
  #   end


defmodule LastValue do
  def value(list) do
    sum_total = Enum.sum(list)
    tax = sum_total * (5.5 / 100)
    total = sum_total + tax

    IO.puts("Subtotal: $#{sum_total}\nTax: $#{tax}\nTotal: $#{total}")
  end
end

LastValue.value(Checkout.price())
# Enter the price of item 1: 25
# Enter the quantity of item 1: 2
# Enter the price of item 2: 10
# Enter the quantity of item 2: 1
# Enter the price of item 3: 4
# Enter the quantity of item 3: 1
# Subtotal: $64.00
# Tax: $3.52
# Total: $67.52
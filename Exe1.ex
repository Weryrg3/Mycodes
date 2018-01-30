# Exercises for programmers
defmodule Calc do
  # Primeira cláusula que será executada, e (loop)
  defp read() do
    bill = IO.gets("What is the bill? ")
    quantity = IO.gets("What is the tip quantity? ")

    case parse(bill, quantity) do
      :error ->
        read()

      {:ok, bill, quantity} ->
        {:ok, bill * quantity / 100, Float.round(bill * (1 + quantity / 100), 2)}
    end
  end

  defp parse(bill, quantity) do
    case {Float.parse(bill), Float.parse(quantity)} do
      {:error, _} ->
        IO.puts("bill wrong")
        :error

      {_, :error} ->
        IO.puts("Quantity wrong")
        :error

      {{bill, _}, {quantity, _}} ->
        if bill < 0 or quantity < 0 do
          IO.puts("Value negative typed")
          :error
        else
          {:ok, bill, quantity}
        end
    end
  end

  # Cláusula final caso final caso teste retorne verdadeiro, essa cláusula irá calcular e imprimir
  def last_value() do
    {:ok, tip, total} = read()
    "\nThe tip is $#{tip} \nThe total is $#{total}\n"
  end
end
# IO.puts(Calc.last_value())
# 0
##############################################################################################################

defmodule Hello do
  def greet() do
    name = String.trim(IO.gets("What is your name? "))
    if is_binary(name) do
      "Hello, #{name}, nice to meet you!"
    else
      IO.puts("Name contains unreadable characters, retype")
      greet()
    end
  end
end

# IO.puts(Hello.greet())
# 1
##################################################################################################################

defmodule String1 do
  def input() do
    input = String.trim(IO.gets("What is the input string? "))
    "#{input} has #{String.length(input)} characters."
  end
end

# IO.puts String1.input()
# 2
##################################################################################################################

# No functions
defmodule NoFunctions do
  def no_functions do
    a = String.trim(IO.gets("What is the quote? ")) 
    b = String.trim(IO.gets("Who said it? "))
    IO.puts("#{b} says, \"#{a}\"")
    # 3
    # What is the quote? These aren't the droids you're looking for.
    # Who said it? Obi-Wan Kenobi
    # Obi-Wan Kenobi says, "These aren't the droids you're looking for." 


    [noun, verb, adjective, adverb] =
      String.split(
        IO.gets("Enter a noun: ") <>
          IO.gets("Enter a verb: ") <> IO.gets("Enter an adjective: ") <> IO.gets("Enter an adverb: ")
      )

    IO.puts(String.trim("Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"))
    # 4
  end
end
##################################################################################################################
defmodule Math do
  defp read() do
      first_number = String.trim(IO.gets("What is the first number? "))
      second_number = String.trim(IO.gets("What is the second number? "))
      case parse(first_number, second_number) do
        :error -> read()
        {:ok, first_number, second_number} -> {:ok, first_number, second_number}
      end
  end

  def display() do
      {:ok, number1, number2} = read()
      "#{number1} + #{number2} = #{number1 + number2}\n#{number1} - #{number2} = #{
        number1 - number2
      }\n#{number1} * #{number2} = #{number1 * number2}\n#{number1} / #{number2} = #{
        div(number1, number2)
      }"
  end

  defp parse(number1, number2) do
    case {Integer.parse(number1), Integer.parse(number2)} do
      {:error, _} ->
        IO.puts("First number wrong")
        :error

      {_, :error} ->
        IO.puts("Second number wrong")
        :error

      {{number1, _}, {number2, _}} ->
        if number1 < 0 or number2 < 0 do
          IO.puts("Value negative typed")
          :error
        else
          {:ok, number1, number2}
        end
    end
  end
end

#IO.puts(Math.display())
# 5
##################################################################################################################
defmodule Retirement do
  def read() do
    {age, _} = Integer.parse(IO.gets("What is your current age? "))
    {retire, _} = Integer.parse(IO.gets("At what age would you like to retire? "))
    {age, retire}
  end

  def retirement() do
    {age, retire} = read()

    date = Date.utc_today()
    date = date.year
    retire = retire - age

    if retire < 1 do
      IO.puts("You can retire already.")
    else
      "You have #{retire} years left until you can retire.\nIt's #{date}, so you can retire in #{
        date + retire
      }."
    end
  end
end

# IO.puts(Retirement.retirement())
# 6
##################################################################################################################
defmodule Area do
  defp read() do
    {length, _} = Integer.parse(IO.gets("What is the length of the room in feet? "))
    {width, _} = Integer.parse(IO.gets("What is the width of the room in feet? "))
    {length, width}
  end

  def feet() do
    {length, width} = read()
    "You entered dimensions of #{length} feet by #{width} feet.\nThe area is\n#{length * width} square feet\n#{
      Float.round(length * width * 0.09290304, 3)
    } square meters"
  end
end

# IO.puts(Area.feet())
# 7
##################################################################################################################
defmodule Pizza do
  defp read() do
    {people, _} = Integer.parse(IO.gets("How many people? "))
    {pizzas, _} = Integer.parse(IO.gets("How many pizzas do you have? "))
    {people, pizzas}
  end

  def pieces() do
    {people, pizzas} = read()
    {pieces, rest} = {div(8 * pizzas, people), rem(8 * pizzas, people)}
      "#{people} people with #{pizzas} pizzas\nEach person gets #{pieces} pieces of pizza.\nThere are #{
        rest
      } leftover pieces."
  end
end

# IO.puts(Pizza.pieces())
# 8
##################################################################################################################
defmodule Gallons do
  defp read() do
    {size, _} = Integer.parse(IO.gets("Enter size in feet: "))
    size
  end

  def gallons() do
    size = read()  
    "You will need to purchase #{trunc(Float.ceil(size / 350))} gallons of\npaint to cover #{
        size
      } square feet."
  end
end

# IO.puts(Gallons.gallons())
# 9
##################################################################################################################
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
    price = IO.gets("Enter the price of item #{n}: ")

    if price == "\n" do
      :stop
    else
      quantity = IO.gets("Enter the quantity of item #{n}: ")

      case parse(price, quantity) do
        :error -> read(n)
        {:ok, price, quantity} -> {:ok, price * quantity}
      end
    end
  end

  def read_items(), do: read_items(1)

  defp read_items(n) do
    case read(n) do
      {:ok, value} ->
        [value | read_items(n + 1)]

      :stop ->
        []
        # [read(n) | guard(n + 1)]
    end
  end

  def last_value() do
    list = read_items()
    sum_total = Enum.sum(list)
    tax = sum_total * (5.5 / 100)
    total = sum_total + tax

    IO.puts("Subtotal: $#{sum_total}\nTax: $#{tax}\nTotal: $#{total}")
  end
end

#Checkout.last_value()
# 10
##################################################################################################################

defmodule Conversion do
  defp read() do
    euros = IO.gets("How many euros are you exchanging? ")
    rate = IO.gets("What is the exchange rate? ")

    case parse(euros, rate) do
      :error -> read()
      {:ok, euros, rate} -> {:ok, euros, rate}
    end
  end

  defp parse(euros, rate) do
    case {Float.parse(euros), Float.parse(rate)} do
      {:error, _} ->
        IO.puts("Euros wrong, Retype")
        :error

      {_, :error} ->
        IO.puts("Exchange rate wrong, Retype")
        :error

      {{euros, _}, {rate, _}} ->
        {:ok, euros, rate}
    end
  end

  def currenty() do
    {:ok, euros, rate} = read()
    # 100 taxa de câmbio
    "#{euros} euros at an exchange rate of #{rate} is\n#{Float.round(euros * rate / 100, 2)} U.S. dollars."
  end
end

# IO.puts(Conversion.currenty())
# 11
##################################################################################################################


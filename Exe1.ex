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

defmodule SimpleInterest do # 0
  defp read() do # 1
    principal = IO.gets("Enter the principal: ")
    rate = IO.gets("Enter the rate of interest: ")
    years = IO.gets("Enter the number of years: ")
    case parse(principal, rate, years) do # 2
      :error -> read()
      {:ok, principal, rate, years} -> {principal, rate, years}
    end # 2
  end # 1

  defp parse(principal, rate, years) do # 3
    case {Float.parse(principal), Float.parse(rate), Integer.parse(years)} do # 4
      {:error, _, _} -> IO.puts("Principal wrong, Retype!!")
      :error
      {_, :error, _} -> IO.puts("Rate of interest wrong, Retype!!!")
      :error
      {_, _, :error} -> IO.puts("Number of years wrong, Retype!!")
      :error
      {{principal, _},{rate, _},{years, _}} -> {:ok, principal, rate, years}
    end # 4
  end # 3

  def computing() do
    {principal, rate, years} = read()
    "After #{years} years at #{rate}%, the investment will\nbe worth $#{Float.round(principal * (1 + (rate/100)*years), 2)}."
  end
end # 0 

# IO.puts(SimpleInterest.computing())
# 12
#############################################################################################################################

defmodule Compound do
  defp read() do
    principal = IO.gets("What is the principal amount? ")
    rate = IO.gets("What is the rate? ")
    number_years = IO.gets("What is the number of years? ")
    number_times = IO.gets("What is the number of times the interest\nis compounded per year? ")

    case parse(principal, rate, number_years, number_times) do
      :error ->
        read()

      {:ok, principal, rate, number_years, number_times} ->
        {principal, rate, number_years, number_times}
    end
  end

  defp parse(principal, rate, number_years, number_times) do
    case {
           Float.parse(principal),
           Float.parse(rate),
           Integer.parse(number_years),
           Integer.parse(number_times)
         } do
      {:error, _, _, _} ->
        IO.puts("Principal amount wrong, Retype!!!")
        :error

      {_, :error, _, _} ->
        IO.puts("Rate wrong, Retype!!!")
        :error

      {_, _, :error, _} ->
        IO.puts("Number of years wrong, Retype!!!")
        :error

      {_, _, _, :error} ->
        IO.puts("Number of times wrong, Retype!!!")
        :error

      {{principal, _}, {rate, _}, {number_years, _}, {number_times, _}} ->
        {:ok, principal, rate, number_years, number_times}
    end
  end

  def interest() do
    {principal, rate, number_years, number_times} = read()
    formula = principal * :math.pow(1 + rate / 100 / number_times, number_years * number_times)
    # a = p * :math.pow((1 + r/n), n*t)
    "$#{principal} invested at #{rate}% for #{number_years} years\ncompounded #{number_times} times per year is $#{
      Float.round(formula, 2)
    }."
  end
end

# IO.puts(Compound.interest())
# 13
#############################################################################################################################

defmodule Tax do
  def read() do
    order = IO.gets("What is the order amount? ")
    state = IO.gets("What is the state? ")

    case parse(order) do
      :error -> read()
      {:ok, order} -> {order, String.trim(state)}
    end
  end
  
  def parse(order) do
    case Float.parse(order) do
      :error -> IO.puts("Order amount wrong, Retype!!")
        :error
      {order, _} -> {:ok, order}
    end
  end

  def calculator() do
    {order, state} = read()
    state = String.upcase(state)
    if state == "WI" or state == "WISCONSIN" do
      "The subtotal is $#{order}.\nThe tax is $#{Float.round(0.055 * order, 2)}.\nThe total is $#{Float.round(order * (1 + 0.055), 2)}."
    else
      "The total is $#{order}"
    end
  end
end

# IO.puts(Tax.calculator())
# 14
##########################################################################################################################################

defmodule Password do
  defp read() do
    String.trim(IO.gets("What is the password? "))
  end

  def read_passwords(:eof, file, _) do
    File.close(file)
    :stop
  end

  def read_passwords(passwords, file, password) do
    [_, saved_password] =
      passwords
      |> String.split(",")

    if String.trim(saved_password) == password do
      File.close(file)
      :ok
    else
      read_passwords(IO.read(file, :line), file, password)
    end
  end

  def validation({:error, _}), do: []

  def validation({:ok, file}) do
    password = read()
    answer = read_passwords(IO.read(file, :line), file, password)
    
    if answer == :ok do
      "Welcome!"
    else
      "I don't know you."
    end
  end
end

#IO.puts(Password.validation(File.open("senhas.txt", [:read])))
# IO.puts(Password.validation(saved_passwords))
# 15
##########################################################################################################################################

defmodule Driving do
  def read() do
    age = IO.gets("What is your age? ")

    case parse(age) do
      :error -> read()
      {:ok, age} -> age
    end
  end

  def parse(age) do
    case Integer.parse(age) do
      :error ->
        IO.puts("Age wrong, Retype!!")
        :error

      {age, _} ->
        {:ok, age}
    end
  end

  def age() do
    age = read()

    if age < 16 do
      "You are not old enough to legally drive."
    else
      "You are old enough to legally drive."
    end
  end
end

# IO.puts(Driving.age())
# 16
##########################################################################################################################################

defmodule BloodAlcohol do
  defp read() do
    alcohol = IO.gets("Type total alcohol consumed, in ounces (oz): ")
    weight = IO.gets("Type your body weight in pounds: ")
    gender = IO.gets("Type your gender: ")
    hours = IO.gets("Type number of hours since the last drink: ")

    case parse(alcohol, weight, hours) do
      :error ->
        read()

      {:ok, alcohol, weight, hours} ->
        case gender(gender) do
          :error -> read()
          {:ok, ratio} -> {alcohol, weight, ratio, hours}
        end
    end
  end

  defp parse(alcohol, weight, hours) do
    case {Float.parse(alcohol), Float.parse(weight), Integer.parse(hours)} do
      {:error, _, _} ->
        IO.puts("Alcohol consumed wrong, Retype!!!")
        :error

      {_, :error, _} ->
        IO.puts("Body weight wrong, Retype!!!")
        :error

      {_, _, :error} ->
        IO.puts("Hours wrong, Retype!!!")
        :error

      {{alcohol, _}, {weight, _}, {hours, _}} ->
        {:ok, alcohol, weight, hours}
    end
  end

  defp gender(gender) do
    gender = gender |> String.trim() |> String.upcase()

    case gender do
      "M" ->
        {:ok, 0.73}

      "MEN" ->
        {:ok, 0.73}

      "MAN" ->
        {:ok, 0.73}

      "MALE" ->
        {:ok, 0.73}

      "W" ->
        {:ok, 0.66}

      "WOMEN" ->
        {:ok, 0.66}

      "WOMAN" ->
        {:ok, 0.66}

      "FEMALE" ->
        {:ok, 0.66}

      "F" ->
        {:ok, 0.66}

      _ ->
        IO.puts("Gender wrong, Retype!!!")
        :error
    end
  end

  def calculator() do
    {alcohol, weight, ratio, hours} = read()

    bac = Float.round(alcohol * 5.14 / weight * ratio - 0.015 * hours, 2)

    permission =
      if bac >= 0.08 do
        "It is not legal for you to drive"
      else
        "It is legal for you to drive"
      end

    "Your BAC is #{bac}\n#{permission}"
  end
end

# IO.puts(BloodAlcohol.calculator())
# 17
##########################################################################################################################################

defmodule Temperature do
  defp read_choice() do
    choice1 = IO.gets("Choice first temperature: ")
    choice2 = IO.gets("Choice second temperature: ")

    case read_temperature({choice1, choice2}) do
      :error ->
        read_choice()

      {choice, {temp1, temp2}} ->
        temperature = IO.gets("Please enter the temperature in #{temp1}: ")

        case parse(temperature) do
          :error -> read_choice()
          {:ok, temperature} -> {temperature, choice, temp2}
        end
    end
  end

  defp read_temperature({choice1, choice2}) do
    {choice1, choice2} =
      {
        choice1
        |> String.trim()
        |> String.upcase(),
        choice2
        |> String.trim()
        |> String.upcase()
      }

    case {choice1, choice2} do
      {"F", "F"} ->
        {{choice1, choice2}, {"Fahrenheit", "Fahrenheit"}}

      {"F", "C"} ->
        {{choice1, choice2}, {"Fahrenheit", "Celsius"}}

      {"F", "K"} ->
        {{choice1, choice2}, {"Fahrenheit", "Kelvin"}}

      {"C", "C"} ->
        {{choice1, choice2}, {"Celsius", "Celsius"}}

      {"C", "F"} ->
        {{choice1, choice2}, {"Celsius", "Fahrenheit"}}

      {"C", "K"} ->
        {{choice1, choice2}, {"Celsius", "Kelvin"}}

      {"K", "F"} ->
        {{choice1, choice2}, {"Kelvin", "Fahrenheit"}}

      {"K", "C"} ->
        {{choice1, choice2}, {"Kelvin", "Celsius"}}

      {"K", "K"} ->
        {{choice1, choice2}, {"Kelvin", "Kelvin"}}

      {_, _} ->
        IO.puts("Choice wrong, Type C, F or K, Retype!!")
        :error
    end
  end

  defp parse(temperature) do
    case Float.parse(temperature) do
      :error ->
        IO.puts("Temperature wrong, Retype!!")
        :error

      {temperature, _} ->
        {:ok, temperature}
    end
  end

  def converter() do
    IO.puts("Press the initial letter of the temperature you want to convert.")
    {t, {temp1, temp2}, temp} = read_choice()

    temperature_final =
      case {temp1, temp2} do
        {"C", "C"} -> t
        {"C", "F"} -> t * 9 / 5 + 32
        {"C", "K"} -> t + 273.15
        {"F", "F"} -> t
        {"F", "C"} -> (t - 32) * 5 / 9
        {"F", "K"} -> (t - 32) * 5 / 9 + 273.15
        {"K", "K"} -> t
        {"K", "C"} -> t - 273.15
        {"K", "F"} -> (t - 273.15) * 9 / 5 + 32
      end

    "The temperature in #{temp} is #{Float.round(temperature_final, 2)}"
  end
end

# IO.puts(Temperature.converter())
# 18
##########################################################################################################################################

defmodule BMI do
  def read() do
    height = IO.gets("Type height in inches: ")
    weight = IO.gets("Type weight in pounds: ")

    case parse(height, weight) do
      :error -> read()
      {:ok, height, weight} -> {height, weight}
    end
  end

  def parse(height, weight) do
    case {Float.parse(height), Float.parse(weight)} do
      {:error, _} ->
        IO.puts("Height wrong, Retype!!!")
        :error

      {_, :error} ->
        IO.puts("Weight wrong, Retype!!!")
        :error

      {{height, _}, {weight, _}} ->
        {:ok, height, weight}
    end
  end

  def calculator() do
    {weight, height} = read()
    bmi = (weight / (height * height) * 703) |> Float.round(1)

    IO.puts("Your BMI is #{bmi}.")

    cond do
      bmi >= 15.5 and bmi <= 25 -> "You are within the ideal weight range."
      bmi > 25 -> "You are overweight. You should see your doctor."
      bmi < 15.5 -> "You are underweight. You should see your doctor."
    end
  end
end

# IO.puts(BMI.calculator())
# 19
##########################################################################################################################################

defmodule MultistateSales do
  defp read() do
    order = IO.gets("What is the order amount? ")

    state =
      IO.gets("What state do you live in? ")
      |> String.trim()
      |> String.upcase()

    case parse(order) do
      :error -> read()
      {:ok, order} -> {order, state}
    end
  end

  defp parse(order) do
    case Float.parse(order) do
      :error ->
        IO.puts("Order amount wrong, retype")
        :error

      {order, _} ->
        {:ok, order}
    end
  end

  def tax_calculator() do
    {order, state} = read()

    if state == "WISCONSIN" or state == "WI" do
      country =
        IO.gets("Choice your country: \nEau Claire\nDunn county\nOther\n")
        |> String.trim()
        |> String.upcase()

      case country do
        "EAU CLAIRE" ->
          "The tax is $#{0.005 * order}\nThe total is $#{Float.round(order * (1 + 0.005), 2)}"

        "DUNN COUNTY" ->
          "The tax is $#{0.004 * order}\nThe total is $#{Float.round(order * (1 + 0.004), 2)}"

        "ILLINOIS" ->
          "The tax is $#{0.08 * order}\nThe total is $#{Float.round(order * (1 + 0.08), 2)}"

        "OTHER" ->
          "The total is $#{order}"
      end
    else
      "The total is $#{order}"
    end
  end
end

# IO.puts(MultistateSales.tax_calculator())
# 20
##########################################################################################################################################

defmodule Numbers do
  def read() do
    number = IO.gets("Please enter the number of the month: ")

    case parse(number) do
      :error -> read()
      {:ok, number} -> number
    end
  end

  def parse(number) do
    case Integer.parse(number) do
      :error ->
        IO.puts("Error!! Type a number!!")
        :error

      {number, _} ->
        if number < 13 and number > 0 do
          {:ok, number}
        else
          IO.puts("Error!! Type a number between 1 and 12!!")
          :error
        end
    end
  end

  def names() do
    number = read()

    moth =
      case number do
        1 -> "January"
        2 -> "February"
        3 -> "March"
        4 -> "April"
        5 -> "May"
        6 -> "June"
        7 -> "July"
        8 -> "August"
        9 -> "September"
        10 -> "October"
        11 -> "November"
        12 -> "December"
      end
      "The name of the month is #{moth}."
  end
end

# IO.puts(Numbers.names())
# 21
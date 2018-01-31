defmodule Compound do
  defp read() do
    principal = IO.gets("What is the principal amount? ")
    rate = IO.gets("What is the rate? ")
    number_years = IO.gets("What is the number of years? ")
    number_times = IO.gets("What is the number of times the interest\nis compounded per year? ")

    case parse(principal, rate, number_years, number_times) do
      :error -> read()
      {:ok, principal, rate, number_years, number_times} -> {principal, rate, number_years, number_times}
    end
  end

  defp parse(principal, rate, number_years, number_times) do
    case {Float.parse(principal), Float.parse(rate), Integer.parse(number_years), Integer.parse(number_times)} do
      {:error, _, _, _} -> IO.puts("Principal amount wrong, Retype!!!")
      :error
      {_, :error, _, _} -> IO.puts("Rate wrong, Retype!!!")
      :error
      {_, _, :error, _} -> IO.puts("Number of years wrong, Retype!!!")
      :error
      {_, _, _, :error} -> IO.puts("Number of times wrong, Retype!!!")
      :error
      {{principal, _}, {rate, _}, {number_years, _}, {number_times, _}} -> {:ok, principal, rate, number_years, number_times}
    end
  end

  def interest() do
    {principal, rate, number_years, number_times} = read()
    formula = 
    "$#{principal} invested at #{rate}% for #{number_years} years\ncompounded #{number_times} times per year is $#{formula}."
  end
end

# P = principal
# r = rate
# t = number_years
# n = number_times

# What is the principal amount? 1500
# What is the rate? 4.3
# What is the number of years? 6
# What is the number of times the interest
# is compounded per year? 4
# $1500 invested at 4.3% for 6 years
# compounded 4 times per year is $1938.84.

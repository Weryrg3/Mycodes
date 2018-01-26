# Abre esse próprio arquivo, que doideira.
case File.open("case.ex") do
  {:ok, file} ->
    IO.puts("First line: #{IO.read(file, :line)}")

  # IO.puts("Second line: #{IO.read(file, :line)}")

  {:error, reason} ->
    IO.puts("Failed to open file: #{reason}")
end

defmodule Users do
  dave = %{name: "Dave", state: "TX", likes: "programming"}

  case dave do
    %{state: some_state} = person ->
      IO.puts("#{person.name} lives in #{some_state}")

    _ ->
      IO.puts("No matches")
  end
end

dave = %{name: "Dave", age: 21}

case dave do
  person = %{age: age} when is_number(age) and age >= 21 ->
    IO.puts("You are cleared to enter the Foo Bar, #{person.name}")

  _ ->
    IO.puts("Sorry, no admission")
end
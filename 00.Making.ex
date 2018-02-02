defmodule PasswordStrength do
  def read() do
    IO.gets("") |> String.trim()
  end

  def check(string) do
    
  end

  def indicator() do
    string = read()
    if String.length(string) >= 8 do

    else
      "The password '#{string}' is a very weak password."
    end
  end
end

# The password '12345' is a very weak password.
# The password 'abcdef' is a weak password.
# The password 'abc123xyz' is a strong password.
# The password '1337h@xor!' is a very strong password.

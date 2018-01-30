defmodule Tudo do
  def teste(string) do
    try do
      String.to_integer(string)
    catch
      ArgumentError -> "Deu erro"
    end
  end
end

IO.puts(Tudo.teste("aaaa"))


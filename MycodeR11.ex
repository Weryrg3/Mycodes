# ➤ Exercise: StringsAndBinaries-5
# Write a function that takes a list of dqs and prints each on a separate
# line, centered in a column that has the width of the longest string. Make
# sure it works with UTF characters.
# iex> center(["cat", "zebra", "elephant"])
# cat
# zebra
# elephant

defmodule Texto do
  def center(palavras) do
    # for x <- lista , do: IO.puts(String.duplicate " ", div(String.length(Enum.max_by lista, &String.length/1), String.length(x) <> x))
    max_size = palavras |> Enum.map(&String.length/1) |> Enum.max()

    for palavra <- palavras do
      tamanho_esp = div(max_size - String.length(palavra), 2)
      espacos = String.duplicate(" ", tamanho_esp)
      IO.puts(espacos <> palavra)
    end
  end
end

# IO.puts(lista) |>  Enum.each(lista)
Texto.center(["cat", "zebra", "elephant"])

# for x <- [1, 2, 3, 4, 5], x < 4 do: x * x	# [1, 4, 9]

#  zebra   = 5  -> 1 esp
#   cata    = 3  -> 2 esp
# elephant = 8  -> 0 esp 
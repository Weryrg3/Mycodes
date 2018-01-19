# ➤ Exercise: StringsAndBinaries-6
# Write a function to capitalize the sentences in a string. Each sentence is
# terminated by a period and a space. Right now, the case of the characters
# in the string is random.
# iex> capitalize_sentences("oh. a DOG. woof. ")
# "Oh. A dog. Woof. "
# 
# ➤ Exercise: StringsAndBinaries-7 pág 127

defmodule Total do
  def capitalize(string) do
    # Pega String e transforma em lista
    lista = String.split(string, ". ")
    # Pega List e tranforma em String novamente
    Enum.join(list(lista), ". ")
  end

  defp list([]), do: []

  defp list([head | tail]) do
    # Pega String separada Ex: DOG, passa a ser dog e depois Dog
    [String.capitalize(String.downcase(head)) | list(tail)]
  end
end

IO.inspect(Total.capitalize("oh. a DOG. woof. "))
IO.inspect(Total.capitalize("CASA. a DoG. Um HaTeR. "))
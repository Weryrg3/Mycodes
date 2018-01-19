defmodule Example1 do
  @author "Wesley Rodrigues"
  def get_author do
    @author
  end
end

IO.puts("Example was written by #{Example1.get_author()}")

defmodule Example2 do
  @attr "one"
  def first, do: @attr
  @attr "two"
  def second, do: @attr
end

IO.puts("#{Example2.second()} #{Example2.first()}")

defmodule Example3 do
  @nome "Wesley"
  def nome, do: @nome
  @sobrenome "Rodrigues"
  def sobrenome, do: @sobrenome
  @sobrenome "Guimarães"
  def sobrenome2, do: @sobrenome
end

IO.puts("#{Example3.nome()} #{Example3.sobrenome2()}")
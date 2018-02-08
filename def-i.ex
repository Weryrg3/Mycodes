list = [4, 2, 1, 3, 5]
defmodule MyList do
  defdelegate sort(list), to: :lists
  defdelegate reverse(list), to: :lists
  defdelegate other_reverse(list), to: :lists, as: :reverse
end

IO.inspect(MyList.sort(list))
IO.inspect(MyList.other_reverse(list))

defmodule MyAppError do
  defexception [:message]
end

value = [:hello]

raise MyAppError,
  message: "did not get what was expected, got: #{inspect value}"


# IO.inspect(defguard())                                #                 /1
# IO.inspect(defguardp())                               #                 /1
# IO.inspect(defmacro())                                #                 /1
# IO.inspect(defmacro())                                #                 /2
# IO.inspect(defmacrop())                               #                 /1
# IO.inspect(defmacrop())                               #                 /2
# IO.inspect(defoverridable())                          #                 /1

https://hexdocs.pm/elixir/Kernel.html

# Example Mix Project geometry shape.ex (como protocolo) e rectangle.ex (como imprementação)
# Protocolos retornam o arquivo correto quando acessados, seu retorno é a própria função, ou seja,
# a imprementação. Quando se cria um protocolo, deve se observar quantas funções (ou cláusulas)
# devem ser retornadas, sendo assim, apartir deste conhecimento, a unica coisa que deve se importar
# e com implementação (defimpl), antes de implementar deve ser criar o que irá retorna para isso é
# usado um modulo e funções e struct (defstruct), retornando assim uma cláusula com mapa dessas
# Structs. A implementação busca de protocolo para si própria retornando os valores corretos
# Em resumo o protocolo sabe qual função executar sendo assim não necessita de partned matches
# sendo usado com muitas implentações.

defprotocol Geometry.Shape do   
  def area(shape)
  def perimeter(shape)
end

defmodule Geometry.Rectangle do
  defstruct [:length, :height]
  def new(length, height) do
    %Geometry.Rectangle{length: length, height: height}
  end
end

defimpl Geometry.Shape, for: Geometry.Rectangle do
  def area(rectangle) do
    rectangle.length * rectangle.height
  end
  def perimeter(rectangle) do
    rectangle.length * 2 + rectangle.height * 2
  end
end



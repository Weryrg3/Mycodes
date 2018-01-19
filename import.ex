defmodule Example do
  def func1 do
    List.flatten([1, [2, 3], 4])
  end

  def func2 do
    import List, only: [flatten: 1]   # Importa a macro List, apenas a função flatten, com apenas um argumento sendo passado.
    flatten([5, [6, 7], 8])
  end
end

IO.inspect(Example.func1())
IO.inspect(Example.func2())
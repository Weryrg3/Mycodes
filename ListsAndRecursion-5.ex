# 
# Implement the following Enum functions using no library functions or list
# comprehensions: all? , each , filter , split , and take . You may need to use an if
# statement to implement filter . The syntax for this is
# if condition do
# expression(s)
# else
# expression(s)
# end

defmodule Enum1 do
  def all([]), do: true

  def all([head | tail]) do
    if head == nil do
      false
    else
      all(tail)
    end
  end

  def all([], _fun), do: true

  def all([head | tail], fun) do
    if fun.(head) == false do
      false
    else
      all(tail, fun)
    end
  end

  def each1([], _fun), do: :ok
  def each1([head | tail], fun) do
    fun.(head)
    each1(tail, fun)
  end

  def filter([], _fun), do: []
  def filter([head | tail], fun) do
    if fun.(head) == true do
      [head | filter(tail, fun)]
    else
      filter(tail, fun)
    end
  end

  def split1([], _number), do: {[], []}
  def split1([head | tail], number) do 
    @begin
    if number > 0 do
      @begin [head | split1(tail, number - 1)]
    else
      {@begin, tail}
    end
  end 
  def split1(list, 0), do: "funcion"
  

end

# all? /1 um argumento
# IO.inspect(Enum1.all([1, nil, 3]))
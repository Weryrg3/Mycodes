defmodule Tudo do
  defmodule Test1 do
    defmodule Test2 do
      defmodule Test3 do
        def hello(n), do: IO.inspect(n * 2)
      end
      defmodule Test4 do
        def hello(n), do: IO.inspect(n * 4)
      end
    end
  end
end

#alias Tudo.Test1.Test2.Test3, as: Test33   # permite mudar nome do ultimo modulo
#alias Tudo.Test1.Test2.Test4, as: Test44

alias Tudo.Test1.Test2.{Test3, Test4}     # permite pegar ultimo modulo sem mudar seu nome

#Test3.hello(10)
#Test4.hello(10)
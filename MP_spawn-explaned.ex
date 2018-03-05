defmodule Test do
  def my_fun(arg1) do 
    Process.sleep(500)
    IO.puts("#{inspect(self())} Primeiro print #{arg1}")
    Process.sleep(500)
    IO.puts("#{inspect(self())} Segundo print #{arg1}")
    Process.sleep(500)
    IO.puts("#{inspect(self())} Terceiro print #{arg1}")
  end

  def test(1, n), do: spawn(fn -> my_fun("Processo spawn #{n}\n") end)
  def test(num, n) do
    spawn(fn -> my_fun("Processo spawn #{n}") end)
    test(num - 1, n+1)    
  end
end

Test.test(10, 1)
Test.my_fun("Processo principal")
# spawn(fn -> my_fun.("Processo spawn 1") end)
# spawn(fn -> my_fun.("Processo spawn 2") end)
# spawn(fn -> my_fun.("Processo spawn 3\n") end)
# spawn(my_fun)
# spawn(my_fun)
# spawn(my_fun)
# my_fun.("Processo principal")
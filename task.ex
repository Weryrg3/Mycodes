defmodule Fib do
  def of(0), do: 0
  def of(1), do: 1
  def of(n), do: Fib.of(n - 1) + Fib.of(n - 2)
end

IO.puts("Iniciando tarefa")
worker = Task.async(fn -> Fib.of(20) end)
IO.puts("Alguma coisa a mais")
IO.puts("Esperando pela tarefa")
result = Task.await(worker)
IO.puts("O resultado é #{result}")

worker = Task.async(Fib, :of, [25])
result = Task.await(worker)
IO.puts("O resultado é #{result}")

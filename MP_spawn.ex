defmodule Spawn do
  def greet do
    receive do
      {sender, msg} ->
        send(sender, {:ok, "Hello, #{msg}"})
        # aceita mais de um processo
        greet()
    end
  end
end

pid = spawn(Spawn, :greet, [])
send(pid, {self(), "World!"})

receive do
  {:ok, message} ->
    IO.puts(message)
end

send(pid, {self(), "Kermit!"})

receive do
  {:ok, message} ->
    IO.puts(message)
  after
    500 ->
      IO.puts("The greeter has gone away")
end

send(pid, {self(), "Wesley"})

receive do
  {:ok, message} ->
    IO.puts(message)
end
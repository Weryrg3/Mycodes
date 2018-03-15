# Exercise: WorkingWithMultipleProcesses-1
# Run this code on your machine. See if you get comparable results.

# WorkingWithMultipleProcesses-2
# Write a program that spawns two processes and then passes each a unique
# token (for example, “fred” and “betty”). Have them send the tokens back.
# – Is the order in which the replies are received deterministic in theory?
# In practice?
# – If either answer is no, how could you make it so?

defmodule SpawnExs do
  def exercice do
    receive do
      {pid, name} ->
        send(pid, {:print, "Hello, #{name} #{inspect self()}"})
        exercice()
    end
  end

  def print(pid, name) do
    send(pid, {self(), name})
    receive do
      {:print, msg} ->
        IO.puts msg
    end
  end
end

SpawnExs.print(spawn(SpawnExs, :exercice, []), "Fred")
SpawnExs.print(spawn(SpawnExs, :exercice, []), "Betty")

# WorkingWithMultipleProcesses-3
# Use spawn_link to start a process, and have that process send a message
# to the parent and then exit immediately. Meanwhile, sleep for 500 ms in
# the parent, then receive as many messages as are waiting. Trace what
# you receive. Does it matter that you weren’t waiting for the notification
# from the child when it exited?
defmodule Test1 do
  def test0(parent) do
    send(parent, "Mensagem")
    # exit(:saiu)
  end

  def run do
    spawn_link(Test1, :test0, [self()])
    Process.sleep(500)

    receive_all()
  end

  def receive_all do
    receive do
      message ->
        IO.inspect(message)
        receive_all()
    after
      0 ->
        IO.puts("Fim mensagens")
    end
  end
end

Test1.run()
# WorkingWithMultipleProcesses-4
# Do the same, but have the child raise an exception. What difference do
# you see in the tracing?

# ?????????????????????????

# WorkingWithMultipleProcesses-5
# Repeat the two, changing spawn_link to spawn_monitor .
# Feito em outro arquivo

# WorkingWithMultipleProcesses-6
# In the pmap code, I assigned the value of self to the variable me at the top
# of the method and then used me as the target of the message returned by
# the spawned processes. Why use a separate variable here?

# WorkingWithMultipleProcesses-7
# Change the ^pid in pmap to _pid . This means the receive block will take
# responses in the order the processes send them. Now run the code again.
# Do you see any difference in the output? If you’re like me, you don’t, but
# the program clearly contains a bug. Are you scared by this? Can you find
# a way to reveal the problem (perhaps by passing in a different function,
# by sleeping, or by increasing the number of pro

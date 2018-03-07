defmodule FibSolver do
  def fib(scheduler) do # 2.3
    send(scheduler, {:ready, self()}) # scheduler: #PID<0.87.0>
    
    receive do
      # client é o processo ou PID
      {:fib, n, client} ->
        send(client, {:answer, n, fib_calc(n), self()})
        fib(scheduler)

      {:shutdown} ->
        exit(:normal)
    end
  end

  defp fib_calc(0), do: 0
  defp fib_calc(1), do: 1
  defp fib_calc(n), do: fib_calc(n - 1) + fib_calc(n - 2)
end

defmodule Scheduler do
  def run(num_processes, module, func, to_calculate) do # 2.2 # func = :fib, module = FibSolver, to_calculate = '%%%%' 37*20
    # Enum está com pry para ser testado later

    1..num_processes # 1..10
    |> Enum.map(fn _ -> spawn(module, func, [self()]) end) #Mapa com 10 processos 
    |> schedule_processes(to_calculate, [])

    # require IEx; IEx.pry
  end

  defp schedule_processes(processes, queue, results) do # 2.4 # Processes = "PID", queue = '%%%%%', results: []
    # require IEx; IEx.pry
    receive do
      {:ready, pid} when length(queue) > 0 ->
        [next | tail] = queue # next = 37, tail = '%%%%%'
        send(pid, {:fib, next, self()})
        schedule_processes(processes, tail, results)

      # require IEx; IEx.pry

      {:ready, pid} ->
        send(pid, {:shutdown})

        if length(processes) > 1 do
          schedule_processes(List.delete(processes, pid), queue, results)
        else
          Enum.sort(results, fn {n1, _}, {n2, _} -> n1 <= n2 end)
        end

      {:answer, number, result, _pid} ->
        schedule_processes(processes, queue, [{number, result} | results])
    end
  end
end

# ???
to_process = List.duplicate(37, 20) # '%%%%%%%%%%%%%%%%%%%%' # 1 # 37 vinte vezes
# to_process = List.duplicate(35, 20)

Enum.each(1..10, fn num_processes -> # 2.0
  {time, result} = :timer.tc(Scheduler, :run, [num_processes, FibSolver, :fib, to_process]) # num_proces = 1..10, to_process = '%%%%%' # 2.1
  if num_processes == 1 do
    IO.puts(inspect(result))
    IO.puts("\n #   times (s)")
  end

  :io.format("~2B   ~.2f~n", [num_processes, time / 1_000_000.0])
end)

# c("MP_fib.ex")
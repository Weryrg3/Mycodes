defmodule RPC do
  def exec(node, func) do
    me = self()
    Node.spawn(node, fn -> send(me, {:result, func.()}) end)
    receive do
      {:result, result} ->
        result
      after
        2000 ->
          raise "Timeout"
    end
  end
end


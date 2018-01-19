defmodule Params do
	def func(p1, p2 \\ [])
	def func(p1, p2) when is_list(p1) do
		"You said with a list"
	end
	def func(p1, p2) do
		"You passed in #{p1}"
	end
end

IO.inspect(Params.func(10, fg: "wesley", gc: "casa"))
list = [4, 2, 1, 3, 5]
defmodule MyList do
  defdelegate sort(list), to: :lists
  defdelegate reverse(list), to: :lists
  defdelegate other_reverse(list), to: :lists, as: :reverse
end

IO.inspect(MyList.sort(list))
IO.inspect(MyList.other_reverse(list))

defmodule MyAppError do
  defexception [:message]
end

value = [:hello]

raise MyAppError,
  message: "did not get what was expected, got: #{inspect value}"

# IO.inspect(def())                                     #                 /1
# IO.inspect(def())                                     #                 /2
# IO.inspect(defguard())                                #                 /1
# IO.inspect(defguardp())                               #                 /1
# IO.inspect(defimpl())                                 #                 /2
# IO.inspect(defimpl())                                 #                 /3
# IO.inspect(defmacro())                                #                 /1
# IO.inspect(defmacro())                                #                 /2
# IO.inspect(defmacrop())                               #                 /1
# IO.inspect(defmacrop())                               #                 /2
# IO.inspect(defmodule())                               #                 /2
# IO.inspect(defoverridable())                          #                 /1
# IO.inspect(defp())                                    #                 /1
# IO.inspect(defp())                                    #                 /2
# IO.inspect(defprotocol())                             #                 /2
# IO.inspect(defstruct())                               #                 /1

https://hexdocs.pm/elixir/Kernel.html
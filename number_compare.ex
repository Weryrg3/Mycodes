defmodule NumberCompare do
  def greater(number, other_number) do
    check(number >= other_number, number, other_number)
  end

  defp check(true, number, _other_number), do: number
  defp check(false, _number, other_number), do: other_number
end
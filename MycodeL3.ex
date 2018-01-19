# # Your Turn pág 104

# • In Chapter 4, Dive into Recursion, on page 59 we built a module called
# EnchanterShop that transforms mundane items into magical items for sale.
# Build this module again, but now apply the higher-order functions that
# you have learned in this chapter.

# • In this chapter, we created a screw factory that processes metal pieces
# and generates screws. A new requirement has arrived for us: we now need
# to pack them. We can pack thirty screws per package, and it takes 70ms.
# A screw is packed when the resulting string is "|o---|" . Change the ScrewsFac-
# tory module, adding the simulation of packing screws.

# • Create a function that generates the Fibonacci sequence up to a given
# quantity. Use streams to produce it. You’ll need to take a look at the
# Stream.unfold/2 function. Tip: try to make the recursive version first.

# • Implement the Quicksort 4 algorithm. Tip: you can use the first item of
# the list to be the pivot, and employ the Enum.split_with/2 higher-order function.

defmodule ScrewsFactory do
  def run(pieces) do
    pieces
    |> Stream.chunk(50)
    |> Stream.flat_map(&add_thread/1)
    |> Stream.chunk(100)
    |> Stream.flat_map(&add_head/1)
    |> Stream.chunk(30)
    |> Stream.flat_map(&add_pack/1)
    |> Enum.each(&output/1)
  end

  defp add_thread(pieces) do
    Process.sleep(50)
    Enum.map(pieces, &(&1 <> "--"))
  end

  defp add_head(pieces) do
    Process.sleep(100)
    Enum.map(pieces, &("o" <> &1))
  end

  defp add_pack(pieces) do
    Process.sleep(70)
    Enum.map(pieces, &("|" <> &1 <> "|"))
  end

  defp output(screw) do
    IO.inspect(screw)
  end
end

#metal_pieces = Enum.take(Stream.cycle(["-"]), 1000)

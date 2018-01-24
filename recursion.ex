defmodule Tudo do
  def soma([]), do: 0
  def soma([head | tail]), do: head + soma(tail)

  def mult([]), do: 1
  def mult([head | tail]), do: head * mult(tail)

  def tamanho([]), do: 0
  def tamanho([_head | tail]), do: 1 + tamanho(tail)
 
  def media([]), do: 0
  def media([head | tail]) do
    (head + soma(tail)) / (1 + tamanho(tail))
  end
end

#IO.inspect(Tudo.soma([1, 2, 3, 4]))
#IO.inspect(Tudo.mult([1, 2, 3, 4]))
#IO.inspect(Tudo.tamanho([1, 2, 3, 4]))
IO.inspect(Tudo.media([1, 2, 3, 4]))
IO.inspect(Tudo.media([1, 1, 1, 1]))

# media
# [1, 2, 3, 4, 2, 1] = 13
# 2,16

# soma = 10
# tamanho = 4

# [1, 2, 3, 4]
# [1, 1, 1, 1]

# head + media(tail) + media(tail) = 49		0
# head + media(tail) + media(tail) = 15		0

# head - media(tail) + media(tail) = 1		0
# head - media(tail) + media(tail) = 1		0

# head + media(tail) - media(tail) = 1		0
# head + media(tail) - media(tail) = 1		0

# head - media(tail) - media(tail) = -23		0
# head - media(tail) - media(tail) = -5		0

# head * media(tail) + media(tail) = 120		1
# head * media(tail) + media(tail) = 16		1

# media(tail) + media(tail) = 16			1
# media(tail) + media(tail) = 16			1

# media(tail) * media(tail) = 1			1
# media(tail) * media(tail) = 1			1

# media(tail) / media(tail) = 1.0			1
# media(tail) / media(tail) = 1.0			1

# media(tail) - media(tail) = 0			1
# media(tail) - media(tail) = 0			1

# head - media(tail) = -2		0
# head - media(tail) = 0		0

# head * media(tail) = 24		1	OK
# head * media(tail) = 1		1	OK

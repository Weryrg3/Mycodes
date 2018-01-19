# ➤ Exercise: Functions-2
# Write a function that takes three arguments. If the first two are zero,
# return “FizzBuzz.” If the first is zero, return “Fizz.” If the second is zero,
# return “Buzz.” Otherwise return the third argument. Do not use any lan-
# guage features that we haven’t yet covered in this book.

# ➤ Exercise: Functions-3
# The operator rem(a, b) returns the remainder after dividing a by b . Write a
# function that takes a single integer ( n ) and calls the function in the previ-
# ous exercise, passing it rem(n,3) , rem(n,5) , and n . Call it seven times with
# the arguments 10, 11, 12, and so on. You should get “Buzz, 11, Fizz, 13,
# 14, FizzBuzz, 16.”
# (Yes, it’s a FizzBuzz solution with no conditional logic.) 1

#tres = fn a, b, c -> a == 0 IO.puts "FizzBuzz"     end# -1
tres = fn 
  0, 0, _c -> "FizzBuzz"
  0, _b, _c -> "Fizz"
  _a, 0, _c -> "Buzz"
  _, _, c -> "#{c}"

end

#IO.inspect(tres.(1, 1, 3))

resto = fn n -> tres.(rem(n, 3), rem(n, 5), n) end

IO.inspect( resto.(10) <> ", " <> resto.(11) <>
    ", " <> resto.(12) <> ", " <> resto.(13) <>
    ", " <> resto.(14) <> ", " <> resto.(15) <>
    ", " <> resto.(16))

# A sigil starts with a tilde, followed by an upper- or lowercase letter, some
# delimited content, and perhaps some options. The delimiters can be <...> ,
# {...} , [...] , (...) , |...| , /.../ , "..." , and '...' .
# The letter determines the sigil’s type:
# ~C A character list with no escaping or interpolation
# ~c A character list, escaped and interpolated just like a single-quoted string
# ~D A Date in the format yyyy-mm-dd
# ~N A naive (raw) DateTime in the format yyyy-mm-dd hh:mm:ss[.ddd]
# ~R A regular expression with no escaping or interpolation
# ~r A regular expression, escaped and interpolated
# ~S A string with no escaping or interpolation
# ~s A string, escaped and interpolated just like a double-quoted string
# ~T A Time in the format hh:mm:ss[.dddd]
# ~W A list of whitespace-delimited words, with no escaping or interpolation
# ~w A list of whitespace-delimited words, with escaping and interpolation

IO.inspect(~C[1\n2#{1+2}])                      # '1\\n2\#{1+2}'
IO.inspect(~c"1\n2#{1+2}")                      # '1\n23'
IO.inspect(~S[1\n2#{1+2}])                      # "1\\n2\#{1+2}"
IO.inspect(~s/1\n2#{1+2}/)                      # "1\n23"
IO.inspect(~W[the c#{'a'}t sat on the mat])     # ["the", "c\#{'a'}t", "sat", "on", "the", "mat"]
IO.inspect(~w[the c#{'a'}t sat on the mat])     # ["the", "cat", "sat", "on", "the", "mat"]
IO.inspect(~D<1999-12-31>)                      # ~D[1999-12-31]
IO.inspect(~T[12:34:56])                        # ~T[12:34:56]
IO.inspect(~N{1999-12-31 23:59:59})             # ~N[1999-12-31 23:59:59]
IO.inspect(~w[the c#{'a'}t sat on the mat]a)    # [:the, :cat, :sat, :on, :the, :mat]
IO.inspect(~w[the c#{'a'}t sat on the mat]c)    # ['the', 'cat', 'sat', 'on', 'the', 'mat']
IO.inspect(~w[the c#{'a'}t sat on the mat]s)    # ["the", "cat", "sat", "on", "the", "mat"]
IO.inspect(                                     # ~r/Hello world\n/i
~r""" 
Hello world 
"""i
)
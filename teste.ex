# IO.inspect(Enum.map(32..126, ))
for letr <- 0..55295 do
  IO.puts("#{letr} -> #{[letr]}")
end

# Unicode "\u0020" até "\u9999" ?
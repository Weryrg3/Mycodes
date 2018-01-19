nome = fn primeiro_nome -> 
  fn segundo_nome -> 
    "#{primeiro_nome} #{segundo_nome}" 
  end
end
name = nome.("Wesley")
IO.inspect(name.("Rodrigues"))
#IO.inspect(nome.("Wesley").("Rodrigues"))
# IO.inspect()
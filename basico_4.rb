#EX1
peso = 30

if peso >= 70
  puts "Está acima do peso"
elsif peso > 40 and peso < 70
  puts "Está no peso ideal"
elsif peso <= 40
  puts "Está abaixo do peso"
end

#EX2
valor = 10
if valor > 10
  taxa = 5
else
  taxa = 2
end
puts taxa

# Ternário
#valor = 10
#taxa = valor > 10 ? 5 : 2
#puts taxa

#EX3
exemplo = {valor: 15, taxa: 15}

if exemplo[:valor] > 15 or exemplo[:taxa] > 15
  puts "Muito Alto"
elsif (exemplo[:valor] + exemplo[:taxa]) >= 30
  puts "Soma muito alta"
else
  puts "Valor BAIXO"
end

#EX4
mario = {peso: 65.6, altura:1.77}

if (mario[:peso] / (mario[:altura] * mario[:altura])) < 18.5
  puts "Abaixo do peso"
elsif (mario[:peso] / (mario[:altura] * mario[:altura])) >= 18.5 and (mario[:peso] / (mario[:altura] * mario[:altura])) <= 24.99
  puts "Normal"
elsif (mario[:peso] / (mario[:altura] * mario[:altura])) >= 25 and (mario[:peso] / (mario[:altura] * mario[:altura])) <= 29.99
  puts "Acima do peso"
else
  puts "Obeso"
end
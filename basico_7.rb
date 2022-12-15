#EX1
puts "Digite um valor em minutos"
valor = gets.chomp.to_i
puts "seu valor digitado é #{valor * 60} segundos"

#EX2
puts "Digite o nome de uma fruta"
fruta = gets.chomp

if fruta == "morango"
  puts "Suco de morango é bom!"
elsif fruta == "manga"
  puts "Sorvete de manga é bom!"
else
  puts "#{fruta} parece ótima(o)!"
end

#Ex3
numero = 1
while numero <=8 do
  puts "Estou usando while #{numero}"
  numero +=1
end

#EX4
resposta = 1
total = 2 #23


while total < 10000000 do
  resposta += 1
  total = total * 2  
end
puts "Voce pode dobrar o numero 2 #{resposta - 1} vezes para que o valor fique menos de 10 milhões, ficando um total de #{total / 2}"

#ex5
senha = "A4B5"
limite = 1
puts "Digite sua senha, voce tem #{limite+2} tentativa"
senha_digitada = gets.chomp


while senha_digitada != senha do
  puts "Senha incorreta, digite novamente! Voce tem mais #{3 - limite} tentativas"
  puts "Digite sua senha"
  senha_digitada = gets.chomp
  limite += 1
  if limite >= 3
      puts "Conta Bloqueada"
    break    
  end
end
if senha_digitada == senha
   puts "Senha descoberta!"
end
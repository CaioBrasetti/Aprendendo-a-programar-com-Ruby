# # #EX1
inicial = 0
digitado = ""
contador = 1

10.times do
  puts "Digite #{contador} numero de 10!"
  digitado = gets.chomp.to_i
  contador += 1
   if digitado > inicial
    inicial = digitado
    puts
   end   
end
puts
puts "O Valor mais alto que voce digitou foi #{inicial}"

# #ex2
puts "Digite o primeiro numero"
primeiro_numero = gets.chomp.to_i

puts "Digite o segundo numero"
segundo_numero = gets.chomp.to_i

puts "Voce quer somar ou subtrair?"
operação = gets.chomp

if operação.downcase == "somar".downcase
  resultado = primeiro_numero + segundo_numero
  puts resultado
elsif operação.downcase == "subtrair".downcase
  resultado = primeiro_numero - segundo_numero
  puts resultado
else 
  puts "Algo deu errado, tente novamente"
end

#ex3
senha_secreta = 15
condicao = true

puts "Tente adivinhar a senha secreta do código:"
palpite = gets.chomp.to_i

while condicao do
  if palpite == senha_secreta
    puts "Voce acertou miserável =)"
    condicao = false
  elsif
    palpite > senha_secreta
    puts "Seu palpite foi MAIOR que a senha, tente de novo!"
    palpite = gets.chomp.to_i
  elsif
    palpite < senha_secreta
    puts "Seu palpite foi MENOR que a senha, tente de novo!"
    palpite = gets.chomp.to_i
  end
end

#ex4
comidas = {
  massas: ["Espageti", "Fusili", "Parafuso"],
  frutas: ["Banana", "Morango", "Abacaxi", "Pessego", "Uva"],
  legumes: ["Cenoura", "Beterraba", "Batata"],
  graos: ["Feijao", "Ervilha", "Lentilha"],
  folhas: ["Alface", "Agriao", "Espinafre"]
}

lista = []
comidas.each do |chave, valor|
  valor.each do |comida|
    lista << comida
  end
end

puts "Os ingredientes da lista são: #{lista}"

#ex5
lista1 = [1,3,6,7,8,12,15,22,24,29,30,35,42,46,55,76,78,83,89,95,102,107,114]
lista2 = [3,5,9,12,13,17,29,31,35,40,51,64,69,71,75,78,81,83,90,96,100,105,107]
lista3 = []

lista1.each do |numero1|
  lista2.each do |numero2|
    if numero1 == numero2
      lista3 << numero1
      break
    end
  end
end
puts "#{lista3}"

#ex6
(1..100).each do |numero|
    if numero % 2 == 0 and numero % 5 == 0
      puts "PingPong"
  elsif numero % 2 == 0
    puts "Ping"
  elsif numero % 5 == 0
    puts "Pong"
  else
    puts numero
  end
end
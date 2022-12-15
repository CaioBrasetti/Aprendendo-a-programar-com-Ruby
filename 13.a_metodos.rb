# #EX1
def segundos(minutos)
  minutos * 60
end

puts segundos(10) # Imprime 600
puts segundos(75) # Imprime 4500

#EX2
def imc(peso, altura, nome)
  imc = peso / (altura * altura)
  
  if imc < 18.5
    puts "#{nome} está ABAIXO DO PESO"
  elsif imc >= 18.5 and imc <= 24.99
    puts "#{nome} está NORMAL"
  elsif imc >= 25 and imc <= 29.99
    puts "#{nome} está ACIMA DO PESO"
  elsif imc > 30
    puts "#{nome} está OBESO"
  else
    puts "Algo está errado"
  end
end

imc(200.2, 1.75, "Mario")
imc(65.6, 1.65, "Roberta")
imc(79.7, 1.77, "Pedro")
imc(35.3, 1.60, "Ana")

#EX3
agenda = [
  {
    nome: "Rafael", telefone: "5566"
  }, 
  {
    nome: "Rodolfo", telefone: "9988"
  },
  {
    nome: "Romário", telefone: "2299"
  }, 
  {
    nome: "Ana", telefone: "1634"
  }, 
  {
    nome: "Rodrigo", telefone: "9533"
  }
]

def procurar_numero(agenda1, nome1)
  agenda1.each do |contato| #o valor do agenda1 = agenda do parametro, entao ele recebe o arrow todo   
    if contato[:nome] == nome1
      puts "#{contato[:nome]}, #{contato[:telefone]}"
      break
    else 
      next    
    end   
  end
end

procurar_numero(agenda, "Rodrigo")
procurar_numero(agenda, "Ana")
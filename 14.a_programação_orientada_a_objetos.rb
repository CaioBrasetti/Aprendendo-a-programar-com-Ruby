#Ex1
class Calculadora
  def self.ao_quadrado(numero)
    numero * numero
  end
end

puts Calculadora.ao_quadrado(3)

#EX2
class CarroAzul
  def cor
    "Azul"
  end
end

class CarroPreto
  def cor
    "Preto"
  end
end

class CarroBranco
  def cor
    "Branco"
  end
end

carro1 = CarroAzul.new
carro2 = CarroPreto.new
carro3 = CarroBranco.new

[carro1, carro2, carro3].each do |carro|
  puts carro.cor
end

#EX3
class Imc
  def self.calcular(peso, altura, nome)
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
end

Imc.calcular(200.2, 1.75, "Mario")
Imc.calcular(65.6, 1.65, "Roberta")
Imc.calcular(79.7, 1.77, "Pedro")
Imc.calcular(35.3, 1.60, "Ana")

#EX4
class Agenda
  def self.dados
    [
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
    end
  
  def self.procurar_numero(nome)
    dados.each do |contato|
      return contato[:telefone] if contato [:nome] == nome
    end
  end  
end

puts Agenda.dados
puts Agenda.procurar_numero("Rodrigo")
puts Agenda.procurar_numero("Ana")

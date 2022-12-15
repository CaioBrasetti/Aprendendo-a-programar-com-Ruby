#  #teste meu 
# lista = [
#   {nome: "Caio", idade: 31, valor: 10},
#   {nome: "Laura", idade: 26, valor: 115}
# ]

#  puts "Digite um nome: "
#  digitado = gets.chomp
 
# lista.each do |teste|
#   if teste[:nome].downcase == digitado.downcase
#     puts "#{teste[:nome]}, #{teste[:idade]}, #{teste[:valor]}"
#     break
#   end
# end

#ex1
peso_em_kilos = [10,23,44,95]

peso_em_kilos.each do |peso|
  puts peso * 1000
end

#ex2
lista = "Rafael!Roberto!Rodolfo!Marcos!Rodrigo!Jorge!Lucas!Carlos!Dario!Ronaldo!Luis!Moises!Tulio!Armando!Beto!Mathias"
lista_separada = lista.split("!")

lista_separada.each do |nome|
  puts "Oi,#{nome}!"
end

#ex3
exemplo = {a: 1, b: 2, c: 3, d: 7, e: 9}
soma = 0

exemplo.each do |letras, numero|
  if letras == :b or letras == :d
    next
  end
  soma = soma + numero 
end

puts soma

#ex4
agenda = [
  {
    nome: "Rafael", telefone: "5566"
  }, 
  {
    nome: "Rodolfo", telefone: "9988"
  }, 
  {
    nome: "Romário", telefone: "2299"
  }
]
procurar_por = "Rodolfo"

agenda.each do |contato|
  if contato[:nome] == procurar_por
    puts "#{contato[:nome]}, #{contato[:telefone]}"
    break
  else 
    next    
  end   
end

#ex5
carnes = ["picanha", "costela", "alcatra", "maminha"]
pontos = ["mal passada", "ao ponto", "bem passada"]

carnes.each do |qual_carne|  
  pontos.each do |qual_ponto|
    puts "O corte da carne é #{qual_carne} e esta #{qual_ponto}"           
  end
end

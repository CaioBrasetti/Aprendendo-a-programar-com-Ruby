#EX1
exemplo = {frutas: [], verduras: []}

exemplo[:frutas] << "Banana"
exemplo[:verduras] << "Cenoura"
exemplo[:frutas] << "Uva"
exemplo[:verduras] << "Brocolis"

puts exemplo

#EX2
exemplo = {a: "oi", b: 15, "c" => 12.5}

puts exemplo [:a]
puts exemplo [:b]
puts exemplo ["c"]

#EX3
exemplo = {
  a: "cinquenta",
  b: "dez",
  c: [0,1,2,3,4,5,6,7,8,9]
}

puts "#{exemplo[:a]} - #{exemplo[:c][5]}#{exemplo[:c][0]}"
puts "#{exemplo[:b]} - #{exemplo[:c][1]}#{exemplo[:c][0]}"

#EX4
lista_compras = {}
lista_compras [:Caio] = []
lista_compras [:Joao] = []

lista_compras [:Caio] << "Açucar"
lista_compras [:Caio] << "Banana"

lista_compras [:Joao] << "Arroz"
lista_compras [:Joao] << "Feijão"

puts "Caio vai comprar: #{lista_compras[:Caio]}"
puts "Joao vai comprar: #{lista_compras[:Joao]}"

#EX5
exemplo = {fora1:{dentro1: "1"},fora2:{dentro2: "2"}}

puts exemplo
#ex 1
lista = [15,"Caio", 1.0]

puts lista[0]
puts lista[1]
puts lista[2]

#ex 2
a = 5
b = 10
c = 11
d = 15
e = 20

puts "Valores: #{[a,b*d,b*c,e/b,c-b]}"

#ex 3
               #0         #1          #2
exemplo = [["a","b"], ["c","d"], ["e", "f"]]
             #0  1      0   1      0    1   

puts "#{exemplo[2][1]}#{exemplo[0][0]}#{exemplo[1][0]}#{exemplo[0][0]}"

# #ex 4
                # 0                 1
exemplo = [[1,2,["a", "b"]], [3,4,["c", "d"]]]

puts "o valor é #{exemplo[1][0]}#{exemplo[0][2][0]}#{exemplo[0][1]}#{exemplo[1][2][1]}"

#ex 5
texto = "banana#morango#abacaxi"
lista_texto = texto.split("#")

puts "Resultado: #{lista_texto}"

#ex 6 desafio
texto = "banana#morango#abacaxi!limao!mamao"

lista_texto = texto.split(/[\"#","!"]/)

puts "Resultado: #{lista_texto}"

#ex 6 desafio professor
texto = "banana#morango#abacaxi!limao!mamao"

resultado1 = texto.split("#")

resultado2 = resultado1[2].split("!")

resultado_final = resultado1[0], resultado1[1], resultado2[0], resultado2[1], resultado2[2]

puts "Resultado: #{resultado_final}"
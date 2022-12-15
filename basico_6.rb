# #ex1
21.times do |n| 
  if n % 3 == 0
    next
  end
  puts n
end

#ex2
n = 4
4.times do 
  n = n*4 
end
puts n

#ex3
nome = "Caio"
idade = 31

idade.times do |n|
  n = n + 1

  if n == idade
    puts "#{nome} tem #{n} ano(s)"
  else
    puts "#{nome} já teve #{n} ano(s)"
  end
end

#ex4
letras = ["A", "B", "C"]

letras.each do |letra|  
  5.times do |n|
    n = n + 1
    print "#{letra}#{n} "
  end
puts
end

#ex5
inicio = 32
(inicio..51).each do |n|
  puts n
end

#ex6
temperatura_min_celsius = 10
temperatura_max_celsius = 40

(temperatura_min_celsius..temperatura_max_celsius).each do |temperatura|
  if temperatura <= 19
    puts "A temperatura #{temperatura}°C é considerado frio"
  elsif temperatura >=20 and temperatura <=29
    puts "A temperatura #{temperatura}°C é considerado agradavel"
  elsif temperatura >= 30
    puts "A temperatura #{temperatura}°C é considerado quente"
  else
    puts "Algo está errado"
  end
end

#ex7
nome = "Caio"

(1..10).each do |n|
  puts n
  n.times do |contador|
    puts "#{contador + 1}. #{nome}"
  end
end
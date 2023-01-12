# Implementar uma classe Carro que inicializa com o modelo, cor, km rodados. A classe carro deve expor os métodos:
#   detalhes (que retorna modelo e cor do carro)
#   km_rodados (que retorna os km rodados pelo carro)
#   precisa_trocar_oleo? (retorna true se os km_rodados forem >10000 senão, false)
#   precisa_trocar_pneu? (retorna true se os km_rodados forem >50000 senão, false)

class Carro
  attr_reader :km_rodados

  def initialize(modelo, cor, km_rodados)
    @modelo = modelo
    @cor = cor
    @km_rodados = km_rodados
  end

  def detalhes
    "#{@modelo} #{@cor}"
  end 

  def precisa_trocar_oleo?
    if km_rodados > 10000
      return true
    else
      return false
    end     
  end

  def precisa_trocar_pneu?
    if km_rodados > 50000
      return true
    else
      return false
    end
  end
end

carro_preto = Carro.new("corsa", "preto", 32000)
puts carro_preto.detalhes # "corsa preto"
puts carro_preto.km_rodados # 32000
puts carro_preto.precisa_trocar_oleo? # true
puts carro_preto.precisa_trocar_pneu? # false

puts "--------------------------------------"

carro_azul = Carro.new("fusca", "azul", 9000)
puts carro_azul.detalhes # "fusca azul"
puts carro_azul.km_rodados # 9000
puts carro_azul.precisa_trocar_oleo? # false
puts carro_azul.precisa_trocar_pneu? # false

puts "--------------------------------------"

carro_branco = Carro.new("palio", "branco", 51000)
puts carro_branco.detalhes # "palio branco"
puts carro_branco.km_rodados # 51000
puts carro_branco.precisa_trocar_oleo? # true
puts carro_branco.precisa_trocar_pneu? # true
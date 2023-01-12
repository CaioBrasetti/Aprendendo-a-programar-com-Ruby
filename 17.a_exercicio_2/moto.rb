require_relative "veiculo.rb"

class Moto < Veiculo
  def initialize  
    super(250,2)      
  end

  def cilindradas
    "200cc"
  end
end

moto = Moto.new
puts moto.rodas # 2
puts moto.peso # 250kg
puts moto.cilindradas # 200cc
# moto.carga # NoMethodError, pois não deve estar disponível para Moto
# moto.lugares # NoMethodError, pois não deve estar disponível para Moto

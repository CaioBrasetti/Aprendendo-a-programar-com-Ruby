require_relative "veiculo.rb"

class Caminhao < Veiculo
  def initialize
    super(12000, 8)
  end

  def carga
    "Arroz"
  end
end

caminhao = Caminhao.new
puts caminhao.rodas # 8
puts caminhao.peso # 12000kg
puts caminhao.carga # arroz
# caminhao.cilindradas # NoMethodError, pois não deve estar disponível para Caminhao
# caminhao.lugares # NoMethodError, pois não deve estar disponível para Caminhao
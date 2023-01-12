class Veiculo
  attr_reader :peso, :rodas

  def initialize(peso, rodas)
    @peso = peso
    @rodas = rodas
  end
end

veiculo = Veiculo.new(100000, 12)
puts veiculo.rodas # 12
puts veiculo.peso # 100000kg
# veiculo.carga # NoMethodError, pois não deve estar disponível Veiculo
# veiculo.cilindradas # NoMethodError, pois não deve estar disponível Veiculo
# veiculo.lugares # NoMethodError, pois não deve estar disponível Veiculo

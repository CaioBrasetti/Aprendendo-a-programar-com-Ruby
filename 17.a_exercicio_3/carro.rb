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

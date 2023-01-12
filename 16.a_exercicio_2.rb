# Implemente uma classe CorsaFlex que extende de carro. O CorsaFlex possui 4 lugares (ao invés de 2). E funciona com gasolina e alcool.
# NOTA: Utilizar super nesse exercício.

class Carro
  def lugares
    2
  end

  def combustivel
    "gasolina"
  end
end

class CorsaFlex < Carro
  def lugares
    super + 2
  end

  def combustivel
    "#{super} e alcool"  
  end
end 

carro = CorsaFlex.new
puts carro.lugares # 4
puts carro.combustivel # gasolina e alcool
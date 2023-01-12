require_relative "carro.rb"

class Oficina < Carro 
  attr_accessor :lista

  def initialize
    @lista = []     
  end

  def adicionar_carro(dados_carro)
    lista << dados_carro
    # lista << { modelo: dados_carro.modelo, cor: dados_carro.cor }
  end

  def listar_todos_carros
    total = []
    lista.each do |list|
      total << list.detalhes          
    end 
    "#{total}"       
  end 

  def listar_carros_troca_oleo    
    total = []
    lista.each do |list|
      if list.precisa_trocar_oleo? # == true
        total << list.detalhes
      else
        next
      end          
    end
    "#{total}"
  end

  def listar_carros_troca_pneu
    total = []
    lista.each do |list|
      if list.precisa_trocar_pneu? # == true
        total << list.detalhes
      else
        next
      end          
    end
    "#{total}"
  end
end

oficina = Oficina.new
oficina.adicionar_carro(Carro.new("corsa", "preto", 32000))
oficina.adicionar_carro(Carro.new("fusca", "azul", 9000))
oficina.adicionar_carro(Carro.new("palio", "branco", 51000))

puts oficina.listar_todos_carros #["corsa preto", "fusca azul", "palio branco"]
puts oficina.listar_carros_troca_oleo #["corsa preto", "palio branco"]
puts oficina.listar_carros_troca_pneu #["palio branco"]
#EX1
class Pessoa
  attr_writer :nome 
  attr_writer :sobrenome
  attr_accessor :idade 
  attr_reader :nome_completo
  
  @nome   
  @sobrenome
  @idade 

  def nome_completo
    "#{@nome} #{@sobrenome}"
  end  
end

roberto = Pessoa.new

roberto.idade = 50
roberto.idade # 50

roberto.nome = "Roberto"
roberto.sobrenome = "da Silva"

roberto.nome #NoMethodError (undefined method `nome'
roberto.sobrenome #NoMethodError (undefined method `sobrenome'

roberto.nome_completo # "Roberto da Silva"


#EX2
class Produto
  attr_accessor :nome
  attr_accessor :preco

  def initialize(nome, preco)
    @nome = nome
    @preco = preco
  end
end

class Carrinho
  attr_accessor :produtos

  def initialize
    @produtos = [] # @nome="leite", @preco=3>, #<Produto:0x000055abcf9244f8 @nome="nescau", @preco=5>, #<Produto:0x000055abcf946a58 @nome="pão", @preco=6>, #<Produto:0x000055abcf95bb60 @nome="queijo", @preco=8>]
  end

  def total
    total = 0
    produtos.each do |produto|
      total += produto.preco
    end
    total
  end
end

carrinho_compras = Carrinho.new
carrinho_compras.produtos << Produto.new("leite", 3)
carrinho_compras.produtos << Produto.new("nescau", 5)
carrinho_compras.produtos << Produto.new("pão", 6)
carrinho_compras.produtos << Produto.new("queijo", 8)

carrinho_compras.total # 22

#EX3
class Pessoa
  attr_accessor :nome
  attr_accessor :telefone

  def initialize(nome, telefone)
    @nome = nome
    @telefone = telefone
  end
end

class Agenda
  attr_accessor :cadastrar

  def initialize
    @cadastrar = []
  end

  def adicionar(pessoa) 
    cadastrar << { nome: pessoa.nome, telefone: pessoa.telefone }
  end

  def buscar(nome)
    cadastrar.each do |pessoa|
      if pessoa[:nome] == nome  
        puts pessoa[:telefone]
      else
        puts " "
      end    
    end
  end
end

minha_agenda = Agenda.new
minha_agenda.adicionar(Pessoa.new("Rodrigo", 99229822))
minha_agenda.adicionar(Pessoa.new("Rafael", 92345567))
minha_agenda.adicionar(Pessoa.new("Sofia", 97213399))

minha_agenda.buscar("Rodrigo") # 99229822
minha_agenda.buscar("Alan") # ""

#EX4
class Pessoa
  attr_accessor :nome
  attr_accessor :best_friend

  def initialize(nome_pessoa)
    @nome_pessoa = nome_pessoa
    puts nome_pessoa
  end

  def best_friend
     nome_pessoa 
  end
end

mario = Pessoa.new("Mario")
ronaldo = Pessoa.new("Ronaldo")
pedro = Pessoa.new("Pedro")
romario = Pessoa.new("Romario")

mario.best_friend = ronaldo
ronaldo.best_friend = pedro
pedro.best_friend = romario
romario.best_friend = mario

mario.best_friend.nome # Ronaldo
mario.best_friend.best_friend.nome # Pedro
mario.best_friend.best_friend.best_friend.nome # Romario
mario.best_friend.best_friend.best_friend.best_friend.nome #Mario
mario.best_friend.best_friend.best_friend.best_friend.best_friend.nome #Ronaldo
class Forca
  attr_accessor :escolhida, :digitada

  def initialize(escolhida)
    @escolhida = escolhida.split("")
    @errou = 0
    @final = Array.new(@escolhida.size)
    @digitada = digitada      
  end

  def acertou?(escolhida)
    acertos = false      
    escolhida.each_with_index do |esco, index|        
      if digitada == esco          
        acertos = true
        @final[index] = digitada                     
      end        
    end
    acertos #true
  end 

  def jogar

    while true
      puts "Digite uma letra"
      @digitada = gets.chomp        
      
      if acertou?(escolhida)
        puts "#{@final}"
        if @final == escolhida
          return puts "Você Ganhou!"
        end
      else
        @errou += 1
        puts "Você cometeu um erro. (#{@errou} de #{@escolhida.size})"
      end       
      if @errou ==  @escolhida.size
        return puts "Você perdeu!" 
      end     
    end #while
  end #def jogar
end # class forca



jogo = Forca.new("cavalo")
jogo.jogar
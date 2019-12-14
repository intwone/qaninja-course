# Orientação ao objeto
# Ruby é uma linguagem considerada puramente orientada a objetos
# No ruby tudo é objeto

# Classe possui atributos e métodos
# Características e ações

# Carro(Nome, Marca, Cor, Quantidade de Portas, etc...)
# Ligar, businar, parar, andar, etc...

class Carro
  #atributos

  attr_accessor :nome

  # Metodos

  def ligar
    puts "O carro está pronto para iniciar o trajeto"
  end
end

civic = Carro.new
civic.nome = "Civic"

puts civic.nome
civic.ligar

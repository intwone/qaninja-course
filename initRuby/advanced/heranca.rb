# Class genérica
class Veiculo
  attr_accessor :nome, :marca, :modelo

  def initialize(nome, marca, modelo)
    self.nome = nome
    self.marca = marca
    self.modelo = modelo
  end

  def ligar
    puts "#{nome} está pronto para iniciar o trajeto!"
  end

  def buzinar
    puts "BEEP BEEP!"
  end
end

# Classe carro
class Carro < Veiculo
  def dirigir
    puts "#{nome} iniciando o trajeto!"
  end
end

# Classe moto
class Moto < Veiculo
  def pilotar
    puts "#{nome} iniciando o trajeto!"
  end
end

civic = Carro.new("Civic", "Honda", "SI")
civic.ligar
civic.buzinar
civic.dirigir

lancer = Carro.new("Lancer", "Mitsubishi", "EVO")
lancer.ligar
lancer.buzinar
lancer.dirigir

fazer = Moto.new("Fazer", "Yamaha", "250X")
fazer.ligar
fazer.buzinar
fazer.pilotar

class Account
  # atributes
  attr_accessor :saldo, :nome

  # construc
  def initialize(nome)
    self.saldo = 0.0
    self.nome = nome
  end

  # methods
  def deposita(valor)
    self.saldo += valor # self invoca atributo dentro da própria classe (this)
    puts "Depositando a quantia de #{valor} reais na conta do #{self.nome}."
  end
end

# creating a new class
c = Account.new("Cassio")

c.deposita(100.00)
puts c.saldo

c.deposita(10.0)
puts c.saldo

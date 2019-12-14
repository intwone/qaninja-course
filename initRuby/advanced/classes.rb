class Account
  attr_accessor :saldo

  def deposita(valor)
    self.saldo += valor # self invoca atributo dentro da própria classe (this)
    puts "Depositando a quantia de #{valor} reais."
  end
end

c = Account.new

c.saldo = 0.0
c.deposita(100.00)

puts c.saldo

require "capybara"

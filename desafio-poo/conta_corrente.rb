require_relative 'conta'

class ContaCorrente < Conta
  attr_accessor :limite
  def initialize(numero, titular, saldo, limite)
    super(numero, titular, saldo)
    @limite = limite
  end

  def saque(valor)
    if valor <= (@saldo + @limite)
      @saldo -= valor
      return true
    else
      puts "saldo insuficiente. Saldo atual: #{@saldo}"
      return false
    end
  end
end
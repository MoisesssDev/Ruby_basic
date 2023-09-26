require_relative 'cliente'

class Conta
  attr_reader :numero, :titular
  attr_accessor :saldo
  
  def initialize(numero, titular, saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
  end

  def saque(valor)
    if valor <= @saldo
      @saldo -= valor
      return true
    else
      puts "saldo insuficiente. Saldo atual: #{@saldo}"
      return false
    end
  end

  def depositar(valor)
    @saldo += valor
  end

  def trasferencia(conta_destino, valor)
    resposta_transferencia = saque(valor)
    if resposta_transferencia
      conta_destino.depositar(valor)
    end
  end
end
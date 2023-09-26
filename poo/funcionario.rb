class Funcionario
  attr_accessor :nome, :codigo_funcionario
  attr_reader :ferias
  
  def initialize(nome, codigo_funcionario)
    @nome = nome
    @codigo_funcionario = codigo_funcionario
    @ferias = false
    @data_inicio_ferias = nil
    @data_fim_ferias = nil
  end

  def inicia_ferias()
    @ferias = true
    @data_inicio_ferias = Time.now()
  end

  def encerra_ferias()
    @ferias = false
    @data_fim_ferias = Time.now()
  end

  def imprime()
    puts "nome: #{@nome}"
    puts "codigo: #{@codigo_funcionario}"
  end
end
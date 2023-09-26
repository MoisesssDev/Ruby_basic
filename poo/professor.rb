class Professor < Funcionario
  attr_accessor :disciplina
  
  def initialize(nome, codigo_funcionario, disciplina)
    super(nome, codigo_funcionario)
    @disciplina = disciplina
  end

  def imprime()
    super
    puts "disciplina: #{@disciplina}"
  end
end
class Turma
  attr_accessor :professor, :numero, :disciplina
  attr_reader :alunos

  def initialize(professor, numero, disciplina)
    @alunos = []
    @disciplina = disciplina
    @professor = professor
    @numero = numero
  end

  def adiciona_aluno(aluno)
    @alunos << aluno
  end

  def total_alunos()
    @alunos.length
  end

  private
  attr_writer :alunos
end
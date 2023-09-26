alunos = [
  {
      nome: 'Alberto',
      nota: 7,
      disciplina: 'Artes' 
  },
  { 
      nome: 'Ingrid', 
      nota: 10, 
      disciplina: 'Biologia' 
  },
  { 
      nome: 'Fernando', 
      nota: 4.8, 
      disciplina: 'Inglês' 
  }
]

alunos.each do |aluno|
  puts aluno[:nome]
end
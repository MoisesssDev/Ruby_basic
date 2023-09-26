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

# checando se o aluno foi aprovado ou nao
count = 0
alunos.length().times do
  if alunos[count][:nota] >= 5
    puts "#{alunos[count][:nome]} foi aprovado[a] em #{alunos[count][:disciplina]}!"
  else
    puts "#{alunos[count][:nome]} foi reprovado[a] em #{alunos[count][:disciplina]}!"
  end
  count += 1
end
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

#imprimir o nome, a nota dos alunos e a disciplina. Usando switch case
contador = 0
alunos.length().times do
  nota = alunos[contador][:nota]
  nome_aluno = alunos[contador][:nome]
  disciplina = alunos[contador][:disciplina]
  
  case nota
  when 0..4.9
    puts 'Reprovado… precisa se esforçar mais...'
    puts "#{nome_aluno} tirou #{nota} na disciplina de #{disciplina}"
  when 5..10
    puts 'Parabéns, você foi aprovado.'
    puts "#{nome_aluno} tirou #{nota} na disciplina de #{disciplina}"
  else
    puts 'Nota invalida!!'
  end
  contador += 1
end
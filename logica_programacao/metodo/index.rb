def imprime_alunos(aluno, nota, disciplina)
  puts "#{aluno} tirou #{nota} em #{disciplina}"
end
def bem_vindo()
  puts 'Bem vindo ...'
end

alberto = { nome: 'Alberto', nota: 7, disciplina: 'Artes' }
joana = { nome: 'Joana', nota: 8, disciplina: 'Bio' }
karen = { nome: 'Karen', nota: 9, disciplina: 'Filosofia' }
alunos = [alberto, joana, karen]

alunos.each do |aluno|
  imprime_alunos(aluno[:nome], aluno[:nota], aluno[:disciplina])
end
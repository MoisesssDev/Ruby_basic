# tecla_pressionada = 'n'
# while tecla_pressionada != 's' do
#   puts 'Vou continuar imprimindo até você apertar s'

#   tecla_pressionada = gets().chomp() #chomp come o enter do final do gets
# end

tecla_pressionada = 's'
alunos = []
while tecla_pressionada == 's' do
  puts 'Digite o nome do aluno: '
  nome_aluno = gets.chomp
  alunos << nome_aluno

  puts 'Deseja inserir um novo aluno? s ou n'
  tecla_pressionada = gets.chomp
end

puts alunos
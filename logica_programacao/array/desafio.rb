alunos = ['André', 'Sophia', 'Laura']
notas = [5, 6, 8]

# adicionando o aluno Paulo que tirou 7.5
alunos << 'Paulo'
notas << 7.5

# corrigindo a nota de sophia
notas[1] = 9

#imprimindo quantidade de alunos
quantidade_alunos = alunos.length()
puts "A turma possui #{quantidade_alunos} alunos."

#imprimir o nome dos alunos e as respectivas notas

# puts "#{alunos[0]} tirou nota #{notas[0]}"
# puts "#{alunos[1]} tirou nota #{notas[1]}"
# puts "#{alunos[2]} tirou nota #{notas[2]}"
# puts "#{alunos[3]} tirou nota #{notas[3]}"

contador = 0
quantidade_alunos.times do
    puts "#{alunos[contador]} tirou nota #{notas[contador]}"
    contador += 1
end
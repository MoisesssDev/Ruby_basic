# imprimindo a lista
alunos = ['moises', 'fernando']
puts alunos
puts '-' * 15

#adicionando um novo elemento no ultimo indice
alunos << 'gustavo'
alunos << 'luis'
puts alunos
puts '-' * 15

#removendo o ultimo indice
item_removido = alunos.pop()
puts "O item removido foi #{item_removido}"
puts "\n", alunos
puts '-' * 15

# alterando o valor de algum elemento
alunos[1] = 23
puts alunos
puts '-' * 15

# metodos que auxiliam nosso trabalho
puts alunos.first() # retorna o valor da primeira posição do array
puts alunos.last() # retornar o valor da última posição do array
puts alunos.length() # retorna a quantidade de elementos do array
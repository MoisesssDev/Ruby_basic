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
        nota: 7.8, 
        disciplina: 'Inglês' 
    }
]

#imprimir o nome, a nota dos alunos e a disciplina
contador = 0
alunos.length().times do
    puts "#{alunos[contador][:nome]} tirou #{alunos[contador][:nota]}"+ 
    " na disciplina de #{alunos[contador][:disciplina]}"
    contador += 1
end
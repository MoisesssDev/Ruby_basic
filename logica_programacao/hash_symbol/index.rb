# imprimindo string e symbol
caneca_str = 'caneca' # string 
caneca_symbol = :caneca  # symbol
puts caneca_str, caneca_symbol

# declaracao Hash
aluno = {   
    nome: 'João',
    nota: 7,
    disciplina: 'Ciências' 
}

# imprimindo atraves da chave
puts aluno[:nome]
puts aluno[:disciplina]

# alterando o valor
aluno[:nome] = 'Maria'
puts aluno[:nome]
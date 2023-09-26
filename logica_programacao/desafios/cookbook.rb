INSERIR_RECEITA = 1
MOSTRAR_RECEITAS = 2
BUSCAR_RECEITA = 3
DELETAR_RECEITA = 4
SAIR = 5

def criar_linha()
  puts '-' * 20
end

def escolher_opcao()
  puts
  puts 'Menu:'
  puts "[#{INSERIR_RECEITA}] Inserir receita."
  puts "[#{MOSTRAR_RECEITAS}] Mostrar receita."
  puts "[#{BUSCAR_RECEITA}] Buscar receita."
  puts "[#{DELETAR_RECEITA}] Deletar receita."
  puts "[#{SAIR}] Sair."
  puts

  print 'Digite um número: '

  return gets.to_i()
end

def inserir_receita(receitas)
  criar_linha()

  print 'nome da receita: '
  nome = gets.chomp()
  print 'tipo da receita: '
  tipo = gets.chomp()

  receitas << {nome: nome, tipo: tipo}
  puts
  puts 'Receita cadastrada com sucesso!!'.upcase()

  criar_linha()
end

def mostrar_receitas(receitas)
  criar_linha()

  if receitas.empty?
    puts 'Não possui receitas cadastradas!'.upcase()
  else
    puts 'RECEITAS:'
    puts

    contador = 1
    receitas.each do |receita|
      puts "#{contador}."
      puts "nome: #{receita[:nome]}"
      puts "tipo: #{receita[:tipo]}"
      puts
      contador += 1
    end
  end

  criar_linha()
end

def buscar_receita(receitas)
  receitas_encontradas = []

  criar_linha()
  print 'Pesquisar: '
  busca = gets.chomp

  receitas.each do |receita|
    if receita[:nome].downcase.include?(busca.downcase) || receita[:tipo].downcase.include?(busca.downcase)
      receitas_encontradas << receita
    end
  end

  if receitas_encontradas.empty?
    criar_linha()
    puts 'Nenhum resultado encontrado!'.upcase
    print 'Quer visualizar a lista com todas as receitas (y/n): '
    opcao = gets.chomp.downcase

    if opcao == 'y'
      mostrar_receitas(receitas)
      return receitas
    else
      return nil
    end
  else
    mostrar_receitas(receitas_encontradas)
    return receitas_encontradas
  end

end

def deletar_receita(receitas)
  receitas_encontradas = buscar_receita(receitas)

  if receitas_encontradas == nil || receitas_encontradas.size == 0
    puts 'Voltando ao menu!!'
    criar_linha()
  else
    if receitas_encontradas.size == 1
      receita_deletada = receitas_encontradas.pop()
      puts "Receita deletada com sucesso!(#{receita_deletada})"
    else
      puts 'Digite o identificador da receita que deseja apagar:'
      id = gets.to_i()
      receitas_encontradas.delete_at(id -1)
      puts 'Receita deletada com sucesso!'
    end
  end
end



receitas = []
puts 'Bem vindo a cookbook!!!'
opcao = escolher_opcao()

loop do
  case opcao
  when INSERIR_RECEITA
    inserir_receita(receitas)
  when MOSTRAR_RECEITAS
    mostrar_receitas(receitas)
  when BUSCAR_RECEITA
    buscar_receita(receitas)
  when DELETAR_RECEITA
    deletar_receita(receitas)
  when SAIR
    break
  else
    criar_linha()
    puts 'Opção invalida!!!'.upcase()
  end
  opcao = escolher_opcao()
end
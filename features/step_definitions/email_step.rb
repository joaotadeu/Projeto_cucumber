Dado('que o nome e o email existem') do
    @nome = ['Joao','Diana','Manu']
    @email = ['joaotadeu@gmail.com','dianadosanjos@outlook.com','manudoprediozul@uol.com']
  end
  
Quando('eu logo usando {string} e {string}') do |nome, email|
    @resultado = false
    if @nome.include?(nome) and @email.include?(email)
        @resultado = true
    end
end
  
Então('valido que o acesso foi realizado com sucesso') do
    expect(@resultado).to eq(true)
end
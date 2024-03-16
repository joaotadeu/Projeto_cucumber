Dado('que estou na página de login do RockLov') do
    @NavegarRockLov.AcessarPaginaRockLovLogin
end

Dado('que estou na página de cadastro do RockLov') do
    @NavegarRockLov.AcessarPaginaRockLovCadastro
end
  
Então('devo visualizar todos com componentes disponiveis na tela de login') do
    expect(@NavegarRockLov.ListaElementosRockLovLogin).to be_visible

end
  
Dado('devo visualizar todos com componentes disponiveis na tela de cadastro') do
  expect(@NavegarRockLov.ListaElementosRockLovCadastro).to be_visible
end
  
Quando('preencho minhas credenciais de cadastro') do |table|
    table.hashes.each do |dados_usuario|
      @NavegarRockLov.CadastroRockLov(dados_usuario['nome'], dados_usuario['email'], dados_usuario['senha'])
    end
end

Então('devo ver a seguinte mensagem {string}') do |mensagem_esperada|
    expect(@NavegarRockLov.MensagemEsperadaTentativaCadastro(mensagem_esperada)).to be true
end
  
Então('sou direcionado para o dashboard e visualizo a seguinte mensagem {string}') do |mensagem_esperada|
    expect(@NavegarRockLov.MensagemEsperadaDashboard(mensagem_esperada)).to be true
end

Quando('preencho minhas credenciais {string} e {string}') do |email, senha|
    @NavegarRockLov.LoginComSucesso(email,senha)
end

Então('valido que fui logado com sucesso') do
  expect(@NavegarRockLov.MensagemEsperadaDashboard(mensagem_esperada)).to be true
end

Então('valido que fui encaminhado para tela de cadastro de anuncio') do
  pending # Write code here that turns the phrase above into concrete actions
end
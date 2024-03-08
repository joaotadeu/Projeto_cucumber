Dado("que abro o navegador e acesso a pagina") do
  @Navegador.AbrirPagina('https://buger-eats.vercel.app/')
  expect(page).to have_current_path("https://buger-eats.vercel.app/", url: true)
  @Navegador.CadastroParceiro
end
  
Quando("preencho os dados do parceiro") do |table|
  DadosDoParceiro = table.hashes
  DadosDoParceiro.each do |dados_parceiro|
  @Navegador.PreencherDadosParceiro(DadosDoParceiro)
  @FunçõesGenericas.Countdown(5)
  end
end
  
E("escolho o metodo de entrega") do |table|
  tipo_entrega = table.hashes.first
  @Navegador.MetodoEntrega(tipo_entrega['Entrega'])
end

E("efetuo o upload da CNH") do
  @Navegador.UploadCnh
end

Então('devo ver a mensagem {string}') do |mensagem_esperada|
  @Navegador.DadosRecebidosSucesso
  #expect(@Navegador.DadosRecebidosSucesso.text).to include(mensagem_esperada) << Alternativa
  if @Navegador.DadosRecebidosSucesso.text.include?(mensagem_esperada)
    puts "Mensagem esperada encontrada: #{mensagem_esperada}"
  else
    raise "Erro: Mensagem esperada não encontrada. Esperada: #{mensagem_esperada}. Obtida: #{@Navegador.DadosRecebidosSucesso.text}"
  end
end
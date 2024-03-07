Dado("que abro o navegador e acesso a pagina") do
    @Navegador.AbrirPagina('https://buger-eats.vercel.app/')
    expect(page).to have_current_path("https://buger-eats.vercel.app/", url: true)
    @Navegador.CadastroParceiro
end
  
Quando("preencho os dados do parceiro") do |table|
    DadosDoParceiro = table.hashes.first
    @Navegador.PreencherDadosParceiro(DadosDoParceiro)
end
  
E("escolho o metodo de entrega") do |table|
  tipo_entrega = table.hashes.first
  @Navegador.MetodoEntrega(tipo_entrega['Entrega'])
end

E("efetuo o upload da CNH") do
 @Navegador.UploadCnh
end

Então("valido com sucesso que o parceiro foi cadastrado com sucesso") do
  alert = @FunçõesGenericas.FindElement('#swal2-html-container')
  expect(alert.text).to include "Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato."
end
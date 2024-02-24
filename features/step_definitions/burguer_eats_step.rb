Dado("que abro o navegador e acesso a pagina") do
    Navegador.new.abrir_pagina('https://buger-eats.vercel.app/')
    expect(page).to have_current_path("https://buger-eats.vercel.app/", url: true)
    find('.content > main:nth-child(2) > a:nth-child(3) > span:nth-child(1)').click
end
  
Quando("preencho os dados do parceiro") do |table|
    dados_parceiro = table.hashes.first
    campo_nome = find("#page-deliver > form:nth-child(2) > fieldset:nth-child(2) > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)")
    campo_nome.fill_in with: dados_parceiro['Nome']
    campo_cpf = find('input[name="cpf"]')
    campo_cpf.fill_in with: dados_parceiro['Cpf']
    campo_email = find('input[name="email"]')
    campo_email.fill_in with: dados_parceiro['Email']
    campo_wpp = find('input[name="whatsapp"]')
    campo_wpp.fill_in with: dados_parceiro['Whatsapp']
    campo_cep = find('input[name="postalcode"]')
    campo_cep.fill_in with: dados_parceiro['Cep']
    click_button "Buscar CEP"
    campo_num = find('input[name="address-number"]')
    campo_num.fill_in with: dados_parceiro['Numero']
    campo_comp = find('input[name="address-details"]')
    campo_comp.fill_in with: dados_parceiro['Complemento']
end
  
E("escolho o metodo de entrega") do |table|
  entrega_parceiro = table.hashes.first
  case entrega_parceiro['Entrega']
  when 'Moto'
    find('.delivery-method > li:nth-child(1)').click
  when 'Bicicleta'
    find('.delivery-method > li:nth-child(2)').click
  when 'Carro'
    find('.delivery-method > li:nth-child(3)').click
  else
    puts "Método de entrega não reconhecido: #{entrega_parceiro['Entrega']}"
  end

end

E("efetuo o upload da CNH") do
  file_input = find('.dropzone input[type="file"]', visible: false)
  file_input.attach_file('/Users/joaotadeu/Documents/Workspace/Cucumber/features/CNH-falsa.jpeg')
  find('.button-success').click
  Funoes_Genericas.countdown(3)
end

Então("valido com sucesso que o parceiro foi cadastrado com sucesso") do
  alert = find('#swal2-html-container')
  expect(alert.text).to include "Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato."
end
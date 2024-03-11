Dado('que abro o navegador e acesso a pagina do starbugs') do
    visit 'https://starbugs.vercel.app/'
end

Então('eu devo visualizar uma lista de cafés disponíveis') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Dado('que estou na página principal da Starbugs') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Dado('que desejo comprar o seguinte produto:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('inicio a compra desse item') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('devo ver a página de Checkout com os detalhes do produto') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('o valor total da compra deve ser de {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Dado('que iniciei a compra do item {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('faço a bsca do seguinte CEP: {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('informo os demais dados do endereço:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('escolho a forma de pagamento: {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('por fim finalizo a compra') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('sou redirecionado para a página de confirmação de Pedidos') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('deve ser informado o seguinte prazo de entrega: {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('devo ver um popup informando que o produto está indisponível') do
    pending # Write code here that turns the phrase above into concrete actions
end
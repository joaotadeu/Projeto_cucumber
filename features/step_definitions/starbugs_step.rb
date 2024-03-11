Dado('que estou na página principal da Starbugs') do
    @HomePageStartbugs.AbrePaginaStarbugs
    expect(page).to have_current_path('https://starbugs.vercel.app', url: true)
end

Então('eu devo visualizar uma lista de cafés disponíveis') do
    expect(@HomePageStartbugs.ListaCafe.size).to be <= 8
end

E('que desejo comprar o seguinte produto:') do |table|
    #Ou table.hashes.first
    @produto = table.hashes.first
end
  
Quando('inicio a compra desse item') do
   @HomePageStartbugs.CompraCafe(@produto[:Nome].to_s) #<< Aqui foi esperado um argumento tipo string
end
  
Então('devo ver a página de Checkout com os detalhes do produto') do
    @HomePageStartbugs.DetalhesProduto(@produto)
end
  
Então('o valor total da compra deve ser de {string}') do |valor_total|
   @HomePageStartbugs.DetalhesProdutoTotal(valor_total)
end
  
Dado('que iniciei a compra do item {string}') do |string|
   
end
  
Quando('faço a bsca do seguinte CEP: {string}') do |string|
   
end
  
Quando('informo os demais dados do endereço:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable
   
end
  
Quando('escolho a forma de pagamento: {string}') do |string|
   
end
  
Quando('por fim finalizo a compra') do
   
end
  
Então('sou redirecionado para a pagina de confirmação de Pedidos') do
   
end
  
Então('deve ser informado o seguinte prazo de entrega: {string}') do |string|
   
end
  
Então('devo ver um popup informando que o produto está indisponível') do
   
end
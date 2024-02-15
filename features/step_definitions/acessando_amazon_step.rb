Dado("que abro o navegador") do
  visit "https://www.amazon.com.br"
end

Quando("acesso a pagina da amazon") do
  find("#twotabsearchtextbox").set "ips"
  find("#nav-search-submit-button").click
  find('.widgetId\=search-results_5 > span:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > span:nth-child(1) > a:nth-child(1) > div:nth-child(1) > img:nth-child(1)').click
end

Então("posiciono um item no carrinho") do
  click_button('add-to-cart-button')
  find('#attachSiNoCoverage > span:nth-child(1) > input:nth-child(1)').click
  sleep 10
end

E("valido que o item foi posicionado com sucesso") do
  alert = find('.a-size-medium-plus')
  expect(alert.text).to include "Adicionado ao carrinho"
end
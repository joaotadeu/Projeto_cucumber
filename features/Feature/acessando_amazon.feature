#language: pt

Funcionalidade: Acessando pagina WEB e posicionando item no carrinho
    Acessando site amazon que vende produtos diversos
    Posicionando item no carrinho
    validando que o item foi adicionado com sucesso
    
@teste_positivo_amazon
Cenario: Acessando pagina web e posicionando item no carrinho e efetuando validação
Dado que abro o navegador
Quando acesso a pagina da amazon
Então posiciono um item no carrinho
E valido que o item foi posicionado com sucesso
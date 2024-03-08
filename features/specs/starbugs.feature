#language: pt

Funcionalidade: Catálogo de cafés
    Como um usuário do site, eu quero ver o catálogo de cafés na pagina principal
    Para que eu possa escolher e saber mais sobre os produtos disponíveis

    @compra_starbugs
    Cenario: Acessando pagina web do starbugs e efetuar compras
        Dado que abro o navegador e acesso a pagina do starbugs
        Então eu devo visualizar uma lista de cafés disponíveis


    Esquema do Cenário: Iniciar a compra de um café
    Dado que estou na página principal da Starbugs
        E que desejo comprar o seguinte produto:
        | name        | Expresso Gelado |    
        | price       | R$ 9,99         |
        | delivery    | R$ 10,00        |
        # Muito importante a definição de qual tipo de dado está sendo inserido no teste, nesse caso (String)
    Quando inicio a compra desse item
    Então devo ver a página de Checkout com os detalhes do produto
        E o valor total da compra deve ser de "R$ 19,99"

    @temp
    Cenário: Café indisponível
        Dado que estou na página principal da Starbugs
        E que desejo comprar o seguinte produto:
        | name        | Expresso Cremoso |    
        Quando inicio a compra desse item
        Então devo ver um popup informando que o produto está indisponível
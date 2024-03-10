#language: pt

Funcionalidade: Catálogo de cafés
    Como um usuário do site, eu quero ver o catálogo de cafés na pagina principal
    Para que eu possa escolher e saber mais sobre os produtos disponíveis

    @compra_starbugs
    Cenario: Acessando pagina web do starbugs e efetuar compras
        Dado que abro o navegador e acesso a pagina do starbugs
        Então eu devo visualizar uma lista de cafés disponíveis

    @checkout
    Esquema do Cenário: Iniciar a compra de um café
    Dado que estou na página principal da Starbugs
        E que desejo comprar o seguinte produto:
        | Nome             | Preço    | Entrega  |   
        | Expresso Gelado  | R$ 9,99  | R$ 10,00 |
    Quando inicio a compra desse item
    Então devo ver a página de Checkout com os detalhes do produto
        E o valor total da compra deve ser de "R$ 19,99"

    @compra_com_sucesso
    Cenario: Compra bem sucedida
    Dado que estou na página principal da Starbugs
        E que iniciei a compra do item "Expresso Tradicional"
    Quando faço a bsca do seguinte CEP: "14020055"
        E informo os demais dados do endereço:
        | Numero   | Detalhes     |    
        | 1972     | Apto 11      |
        E escolho a forma de pagamento: "Cartão de Crédito"
        E por fim finalizo a compra
     Então sou redirecionado para a página de confirmação de Pedidos
        E deve ser informado o seguinte prazo de entrega: "20 min - 30 min"

    @compra_indisponivel
    Cenário: Café indisponível
        Dado que estou na página principal da Starbugs
        E que desejo comprar o seguinte produto:
        | Nome              | 
        | Expresso Cremoso  |    
        Quando inicio a compra desse item
        Então devo ver um popup informando que o produto está indisponível
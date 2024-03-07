#language: pt

Funcionalidade: Acessando pagina WEB e cadastrando parceiro para entregas
    Acessando site de cadastro
    cadastrando parceiro
    validando que o parceiro foi cadastrado com sucesso

    @cadastro_burgers_eats
    Cenario: Acessando com sucesso a pagina e cadastrando o parceiro usando o valor moto
    Dado que abro o navegador e acesso a pagina
    Quando preencho os dados do parceiro
        | Nome               | Cpf         | Email            | Whatsapp    | Cep       | Numero | Complemento |
        | Diana dos Anjos    | 34735407065 | teste@gmail.com  | 11999999999 | 05893-130 |  222   |   casa      |
    E escolho o metodo de entrega
        | Entrega     |
        | Moto        |
    E efetuo o upload da CNH
    Então valido com sucesso que o parceiro foi cadastrado com sucesso
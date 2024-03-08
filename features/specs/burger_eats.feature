#language: pt

Funcionalidade: Acessando pagina WEB e cadastrando parceiro para entregas
    Acessando site de cadastro
    cadastrando parceiro
    validando que o parceiro foi cadastrado com sucesso

    @cadastro_burgers_eats
    Esquema do Cenario: Acessando com sucesso a pagina e cadastrando o parceiro usando o valor moto
    Dado que abro o navegador e acesso a pagina
    Quando preencho os dados do parceiro
        | Nome      | Cpf   | Email    | Whatsapp    | Cep    | Numero   | Complemento   |
        | <Nome>    | <Cpf> | <Email>  | <Whatsapp>  | <Cep>  | <Numero> | <Complemento> |
    E escolho o metodo de entrega
        | Entrega     |
        | <Entrega>   |
    E efetuo o upload da CNH
    Então devo ver a mensagem "<Mensagem>"

    Exemplos:
        | Nome         | Cpf          | Email             | Whatsapp      | Cep       | Numero | Complemento | Entrega     | Mensagem                                                                                              |
        | Diana Anjos  | 34735407065  | diana@gmail.com   | 11999999999   | 05893-131 | 10     | casa        | Moto        | Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato.   |
        | João Pereira | 12345678910  | joao@outlook.com  | 11999999998   | 05894-311 | 22     | apt         | Carro       | Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato.   |
        | Manu Anjos   | 99999999999  | man@gmail.com     | 11999999989   | 05894-131 | 24     | salgadinho  | Bicicleta   | Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato.   |   
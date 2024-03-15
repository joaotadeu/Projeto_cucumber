#language: pt

@RockLov
Funcionalidade: Acessando pagina Web RockLov
    Acessando site RockLov
    Acessar com credenciais
    Validar que o acesso foi feito com sucesso
    Efetuar cadastro de anuncio

    @campos_Tela
    Cenario: Acessar site rocklov e validar os componentes em tela
    Dado que estou na página principal do RockLov
    Então devo visualizar todos com componentes disponiveis na tela 

    @cadastro_rocklov
    Esquema do Cenario: Acessando e cadastrando com sucesso na pagina web rocklov
    Dado que abro a pagina do RockLov
    Quando preencho minhas credenciais de cadastro:
        | Nome Completo  | Email   | Senha   |
        | <Nome Completo | <Email> | <Senha> |
    Então efetuo tentativa de cadastro
    E Valido que o cadastro foi efetudo com sucesso

    Exemplos:
        | Nome Completo   | Email                 | Senha | Mensagem Esperada                |
        |                 | Dianinha@gmail.com    | 123   | Oops. Informe seu nome completo! |
        | João Tadeu      |                       | 321   | Oops. Informe um email válido!   |
        | Manu dos anjos  | manuzinha@outlook.com |       | Oops. Informe sua senha secreta! |
        | joao pereira    | teste@gmail.com       | 123   | Email já cadastrado.             |

    @login_rocklov
    Cenario: Acessar pagina rocklov web e efetuar o login
    Dado que acesso pagina rocklov para efetuar login
    Quando preencho minhas credenciais "teste@gmail.com" e "123"
    Então valido que fui logado com sucesso
    E valido que fui encaminhado para tela de cadastro de anuncio

    @cadastro_de_anuncio
    Esquema do Cenario: Acessar pagina de cadastro de anuncio e efetuar o cadastro do mesmo
    Dado que acesso pagina rocklov para efetuar login
    Quando preencho minhas credenciais "teste@gmail.com" e "123"
    Então valido que fui logado com sucesso
    E valido que fui encaminhado para tela de cadastro de anuncio
    Então efetuo o cadastro do anuncio
        | Equipamento   | Categoria   | Valor da Diaria   |
        | <Equipamento> | <Categoria> | <Valor da Diaria> |
    
    Exemplos:
        | Equipamento  | Categoria |  Valor da Diaria | Caminho                   |
        |              |           |                  |                           | 

    
    @deletar_anuncio
    Cenario: Acessar pagina rocklov web e efetuar o login e deletar um anuncio
    Dado que acesso pagina rocklov para efetuar login
    Quando preencho minhas credenciais "teste@gmail.com" e "123"
    Então valido que fui logado com sucesso
    E valido que fui encaminhado para tela de cadastro de anuncio
    E efetuo o exclusão de um auncio

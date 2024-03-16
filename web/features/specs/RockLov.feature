#language: pt

@RockLov
Funcionalidade: Acessando pagina Web RockLov
    Acessando site RockLov
    Acessar com credenciais
    Validar que o acesso foi feito com sucesso
    Efetuar cadastro de anuncio

    @validação_campos_login
    Cenario: Acessar site rocklov e validar os componentes em tela
    Dado que estou na página de login do RockLov
    Então devo visualizar todos com componentes disponiveis na tela de login

    @validação_campos_cadastro
    Cenario: Acessar site rocklov e validar os componentes em tela
    Dado que estou na página de cadastro do RockLov
    Então devo visualizar todos com componentes disponiveis na tela de cadastro

    @tentativa_cadastro_rocklov
    Esquema do Cenario: Acessando e efetuando tentativa de cadastro web rocklov
    Dado que estou na página de cadastro do RockLov
    Quando preencho minhas credenciais de cadastro
        | nome   | email   | senha   |
        | <nome> | <email> | <senha> |
    Então devo ver a seguinte mensagem "<mensagem_esperada>"

    Exemplos:
        | nome            | email                   | senha | mensagem_esperada                |
        |                 | dianinha2@gmail.com      | 123   | Oops. Informe seu nome completo! |
        | João Tadeu      |                         | 321   | Oops. Informe um email válido!   |
        | Manu dos anjos  | manuzinha2@outlook.com   |       | Oops. Informe sua senha secreta! |

    @cadastro_com_sucesso
    Esquema do Cenario: Acessando e efetuando de cadastro web rocklov
    Dado que estou na página de cadastro do RockLov
    Quando preencho minhas credenciais de cadastro
        | nome   | email   | senha   |
        | <nome> | <email> | <senha> |
    Então sou direcionado para o dashboard e visualizo a seguinte mensagem "<mensagem_esperada>"

    Exemplos:
        | nome            | email                   | senha | mensagem_esperada |
        | João Tadeu      | JoaoTadeu4@gmail.com    | 321   | Let`s Rock Baby   |
        | Manu dos anjos  | manuzinha4@outlook.com  | 123   | Let`s Rock Baby   |

    @login_rocklov
    Cenario: Acessar pagina rocklov web e efetuar o login
    Dado que estou na página de login do RockLov
    Quando preencho minhas credenciais "teste@gmail.com" e "123"
    Então sou direcionado para o dashboard e visualizo a seguinte mensagem "Let`s Rock Baby"


    @cadastro_de_anuncio
    Esquema do Cenario: Acessar pagina de cadastro de anuncio e efetuar o cadastro do mesmo
    Dado que estou na página de login do RockLov
    Quando preencho minhas credenciais "teste@gmail.com" e "123"
    Então valido que fui logado com sucesso
    E valido que fui encaminhado para tela de cadastro de anuncio
    Então efetuo o cadastro do anuncio
        | Equipamento   | Categoria   | Valor_Diaria    |
        | <Equipamento> | <Categoria> | <Valor_Diaria>  |
    
    Exemplos:
        | Equipamento  | Categoria | Valor_Diaria | Caminho_Arquivo       |
        |              |           |              |                       | 

    
    @deletar_anuncio
    Cenario: Acessar pagina rocklov web e efetuar o login e deletar um anuncio
    Dado que acesso pagina rocklov para efetuar login
    Quando preencho minhas credenciais "teste@gmail.com" e "123"
    Então valido que fui logado com sucesso
    E valido que fui encaminhado para tela de cadastro de anuncio
    E efetuo o exclusão de um auncio

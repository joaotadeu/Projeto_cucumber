class NavegarRockLov < SitePrism::Page
    def AcessarPaginaRockLovLogin
        visit 'http://rocklov-web:3000/'
    end

    def AcessarPaginaRockLovCadastro
        visit 'http://rocklov-web:3000/signup'
    end

    def ListaElementosRockLovLogin
        find('#email')
        find('#password')
        find('.btn-primary')
        find('.link')
    end

    def ListaElementosRockLovCadastro
        find('#fullName')
        find('#email')
        find('#password')
        find('.btn-primary')
        find('.link')
    end

    def CadastroRockLov(nome, email, senha)
        find('#fullName').set(nome)
        find('#email').set(email)
        find('#password').set(senha)
        click_on "Cadastrar" 
    end
    
    def MensagemEsperadaTentativaCadastro(mensagem_esperada)
        mensagem_recebida = find('.alert-dark').text
        mensagem_recebida.eql?(mensagem_esperada)
    end

    def MensagemEsperadaDashboard(mensagem_esperada)
        mensagem_recebida = find('.nav').text
        mensagem_recebida.eql?(mensagem_esperada)
    end

    def LoginComSucesso(email, senha)
        find('#email').set(email)
        find('#password').set(senha)
        click_on "Entrar"
    end
end
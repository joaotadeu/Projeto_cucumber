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

    def CriarAnuncio(equipamento, categoria, valor_diaria, caminho_arquivo)
        click_on "Criar anúncio"
        find('#name').set(equipamento)
        find('#category').set(categoria)
        find('#price').set(valor_diaria)

        file_input = find('#thumbnail', visible: false)
        file_input.attach_file(caminho_arquivo)
        find('.button-success').click
        click_on "submit"
    end  
end
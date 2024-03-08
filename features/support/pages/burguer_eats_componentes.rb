class Navegador < SitePrism::Page
    
    def AbrirPagina(url)
        visit(url)
    end

    def CadastroParceiro
        return find('.content > main:nth-child(2) > a:nth-child(3) > span:nth-child(1)').click
    end

    def PreencherDadosParceiro(dados_parceiro)
      dados_parceiro.each do |dados_parceiro|
        campo_nome = find("#page-deliver input[name='name']")
        campo_nome.fill_in(with: dados_parceiro['Nome'])
        campo_cpf = find('input[name="cpf"]')
        campo_cpf.fill_in(with: dados_parceiro['Cpf'])
        campo_email = find('input[name="email"]')
        campo_email.fill_in(with: dados_parceiro['Email'])
        campo_wpp = find('input[name="whatsapp"]')
        campo_wpp.fill_in(with: dados_parceiro['Whatsapp'])
        campo_cep = find('input[name="postalcode"]')
        campo_cep.fill_in(with: dados_parceiro['Cep'])
        click_button "Buscar CEP"
        campo_num = find('input[name="address-number"]')
        campo_num.fill_in(with: dados_parceiro['Numero'])
        campo_comp = find('input[name="address-details"]')
        campo_comp.fill_in(with: dados_parceiro['Complemento'])
      end
    end

    def MetodoEntrega(tipo_entrega)
        case tipo_entrega
        when 'Moto'
          find('.delivery-method > li:nth-child(1)').click
        when 'Bicicleta'
          find('.delivery-method > li:nth-child(2)').click
        when 'Carro'
          find('.delivery-method > li:nth-child(3)').click
        else
          puts "Método de entrega não reconhecido: #{tipo_entrega['Entrega']}"
        end
    end

    def UploadCnh
      file_input = find('.dropzone input[type="file"]', visible: false)
      file_input.attach_file('/Users/joaotadeu/Documents/Workspace/Cucumber/features/CNH-falsa.jpeg')
      find('.button-success').click 
    end

    def DadosRecebidosSucesso
        return find('#swal2-html-container')
    end


end
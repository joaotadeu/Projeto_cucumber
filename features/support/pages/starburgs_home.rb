require 'rspec'

class HomePage
    include Capybara::DSL
    include RSpec::Matchers 
  
    def AbrePaginaStarbugs # "Função" definida utilizando o comando def
      visit 'https://starbugs.vercel.app/' # Tem a função de visistar a página inicial do projeto
    end
  
    def ListaCafe
      return all('.coffee-item')
    end
  
    def CompraCafe(nome_cafe)
      produto = find('.coffee-item', text: nome_cafe) 
      produto.find('.buy-coffee').click
    end

    def DetalhesProduto(produto)
      titulo_do_produto = find('.item-details')
      expect(titulo_do_produto.text).to eql produto[:Nome]

      preco_do_produto = find('.sub-price')
      expect(preco_do_produto.text).to eql produto[:Preço]

      delivery = find('.delivery-price')
      expect(delivery.text).to eql produto[:Entrega]
    end

    def DetalhesProdutoTotal(valor_total)
      preco = find('.total-price')
      expect(preco.text).to eql valor_total
    end
end
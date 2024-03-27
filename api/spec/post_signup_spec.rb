require_relative "routes/signup"
require_relative "libs/mongo"

describe "POST /signup" do
  context "novo usuario" do
    before(:all) do
      payload = { name: "Teste1", email: "teste@bol.com.br", password: "pwd123" }
      MongoDB.new.remove_user(payload[:email])

      @result = Signup.new.create(payload)
    end

    it "valida status code" do
      expect(@result.code).to eql 200
    end

    it "valida id do usuário" do
      expect(@result.parsed_response["_id"].length).to eql 24
    end
  end

  context "usuario ja existe" do
    before(:all) do
      # dado que eu tenho um novo usuario
      payload = { name: "João da Silva", email: "joao@ig.com.br", password: "pwd123" }
      MongoDB.new.remove_user(payload[:email])

      # e o email desse usuário ja foi cadastrado no sistema
      Signup.new.create(payload)

      # quando faço uma requisição para a rota /signup
      @result = Signup.new.create(payload)
    end

    it "deve retornar 409" do
      # entao deve retornar 409
      expect(@result.code).to eql 409
    end

    it "deve retornar mensagem" do
      expect(@result.parsed_response["error"]).to eql "Email already exists :("
    end
  end

  context "usuario nulo" do
    before(:all) do
      # dado que eu tenho um novo usuario
      payload = { name: "", email: "joao@ig.com.br", password: "pwd123" }
      MongoDB.new.remove_user(payload[:email])

      # e o email desse usuário ja foi cadastrado no sistema
      Signup.new.create(payload)

      # quando faço uma requisição para a rota /signup
      @result = Signup.new.create(payload)
    end

    it "deve retornar mensagem" do
      expect(@result.parsed_response["error"]).to eql "required name"
    end
  end

  context "email nulo" do
    before(:all) do
      # dado que eu tenho um novo usuario
      payload = { name: "tadeu", email: "", password: "pwd123" }
      MongoDB.new.remove_user(payload[:email])

      # e o email desse usuário ja foi cadastrado no sistema
      Signup.new.create(payload)

      # quando faço uma requisição para a rota /signup
      @result = Signup.new.create(payload)
    end

    it "deve retornar mensagem" do
      expect(@result.parsed_response["error"]).to eql "required email"
    end
  end

  context "senha nula" do
    before(:all) do
      # dado que eu tenho um novo usuario
      payload = { name: "tadeu", email: "tadeu@gmail.com", password: "" }
      MongoDB.new.remove_user(payload[:email])

      # e o email desse usuário ja foi cadastrado no sistema
      Signup.new.create(payload)

      # quando faço uma requisição para a rota /signup
      @result = Signup.new.create(payload)
    end

    it "deve retornar mensagem" do
      expect(@result.parsed_response["error"]).to eql "required password"
    end
  end

end

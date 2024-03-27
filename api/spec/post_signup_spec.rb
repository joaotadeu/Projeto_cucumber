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

  examples = [
    {
      title: "usuario ja existe",
      payload: { name: "João da Silva", email: "joao@ig.com.br", password: "pwd123" },
      code: 409,
      error: "Email already exists :(",
    },
    {
      title: "usuario nulo",
      payload: { name: "", email: "joao@ig.com.br", password: "pwd123" },
      code: 412,
      error: "required name",
    },
    {
      title: "email nulo",
      payload: { name: "tadeu", email: "", password: "pwd123" },
      code: 412,
      error: "required email",
    },
     title: "senha nulo",
      code: 412,
      payload: { name: "tadeu", email: "tadeu@gmail.com", password: "" },
      error: "required password",
  ]

  examples.each do |e|
    context "#{e[:title]}" do
      before(:all) do
        @result = Signup.new.create(e[:payload])
      end

      it "valida status code #{e[:code]}" do
        expect(@result.code).to eql e[:code]
      end

      it "valida id do usuário" do
        expect(@result.parsed_response["error"]).to eql e[:error]
      end
    end
  end

end

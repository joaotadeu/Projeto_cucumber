require 'mongo'

Mongo::Logger.logger = Logger.new("/Users/joaotadeu/Documents/Workspace/Cucumber/web/log/mongo.log")

class MongoDB
  def Remove_user(email)
    begin
      client = Mongo::Client.new('mongodb://rocklov-db:27017/rocklov')
      users = client[:users]
      users.delete_many(email: email)
    rescue StandardError => e
      puts "Erro ao remover usuário: #{e.message}"
    ensure
      client.close if client
    end
  end
end
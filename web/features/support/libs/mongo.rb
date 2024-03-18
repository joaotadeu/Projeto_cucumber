# require 'mongo'

# Mongo::Logger.logger = Logger.new("/web/logs/")


# class MongoDB
#     def RemoveUser(email)
#         client = Mongo::Client.new('mongodb://rocklov-db:27017/rocklov')
#         users = client[:users]
#         users.delete_many({email: email})
#     end

# end
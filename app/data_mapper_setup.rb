require 'data_mapper'

# env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_development")

require './app/link'

DataMapper.finalize

DataMapper.auto_upgrade!

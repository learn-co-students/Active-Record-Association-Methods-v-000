require 'bundler/setup'
Bundler.require

require 'active_record'
require 'rake'

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
Dir[File.join(File.dirname(__FILE__), "../lib/support", "*.rb")].each {|f| require f}

DBRegistry[ENV["PLAYLISTER_ENV"]].connect!
DB = ActiveRecord::Base.connection

if ENV["PLAYLISTER_ENV"] == "test"
  ActiveRecord::Migration.verbose = false

  # The verbose logging of ActiveRecord database interactions during testing
  # provides insight into ActiveRecord's inner workings, but makes the rspec output less legible.
  # Uncomment the next line to disable this logging.
  # ActiveRecord::Base.logger.level = Logger::INFO
end

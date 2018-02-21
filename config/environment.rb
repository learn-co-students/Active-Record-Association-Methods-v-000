require 'bundler/setup'
Bundler.require

require 'active_record'
require 'rake'

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
Dir[File.join(File.dirname(__FILE__), "../lib/support", "*.rb")].each {|f| require f}

DBRegistry[ENV["PLAYLISTER_ENV"]].connect!
DB = ActiveRecord::Base.connection

# For some reason the statement in the if did not remove the "puts" to the console; the one with the logger did.
ActiveRecord::Base.logger = nil
if ENV["PLAYLISTER_ENV"] == "test"
  ActiveRecord::Migration.verbose = false
end

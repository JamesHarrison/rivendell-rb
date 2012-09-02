require 'rubygems'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'simplecov'
SimpleCov.start

require 'rivendell'
require 'dm-transactions'

# TODO make test DB configurable (Rakefile uses same parameters)
Rivendell::Database.establish_connection 'mysql://rduser:letmein@localhost/rivendell_test'

RSpec.configure do |config|
  config.before(:each) do
    repository(:default) do
      transaction = DataMapper::Transaction.new(repository)
      transaction.begin
      repository.adapter.push_transaction(transaction)
    end
  end
  
  config.after(:each) do
    repository(:default).adapter.pop_transaction.rollback
  end
end

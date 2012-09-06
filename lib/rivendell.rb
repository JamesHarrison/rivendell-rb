require 'dm-core'
require 'dm-mysql-adapter'
require 'dm-serializer'
require 'dm-types'
require 'dm-validations'

module Rivendell
  # DataMapper::Logger.new(STDOUT, :debug)
  # DataMapper::Model.raise_on_save_failure = true

  class Database
    def self.default_url
      if File.exists?("/etc/rc.conf")
        # If we can, pull the config from Rivendell's own configuration.
        rdconf = IniFile.load("/etc/rd.conf")
        mysql = rdconf['mySQL']
        "mysql://#{mysql['Loginname']}:#{mysql['Password']}@#{mysql['Hostname']}/#{mysql['Database']}"
      else
        'mysql://rduser:letmein@localhost/Rivendell'
      end
    end

    def self.establish_connection(url = default_url)
      # Rivendell's default for most setups
      DataMapper.setup :default, url

      DataMapper.repository(:default).adapter.field_naming_convention = 
        DataMapper::NamingConventions::Field::Underscored 

      true
    end
  end

end
require 'rivendell/log_item'
require 'rivendell/log'
require 'rivendell/cart'
require 'rivendell/task'
require 'rivendell/dropbox'
require 'rivendell/group'
require 'rivendell/tools'

DataMapper.finalize

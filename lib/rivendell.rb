require 'dm-core'
require 'dm-mysql-adapter'
require 'dm-serializer'
require 'dm-types'
require 'dm-validations'

module Rivendell
  # DataMapper::Logger.new(STDOUT, :debug)
  # DataMapper::Model.raise_on_save_failure = true
  if File.exists?("/etc/rc.conf")
    # If we can, pull the config from Rivendell's own configuration.
    rdconf = IniFile.load("/etc/rd.conf")
    mysql = rdconf['mySQL']
    DataMapper.setup(:default, "mysql://#{mysql['Loginname']}:#{mysql['Password']}@#{mysql['Hostname']}/#{mysql['Database']}")
  else
    # Rivendell's default for most setups
    DataMapper.setup(:default, 'mysql://rduser:letmein@localhost/Rivendell')
  end

  DataMapper.repository(:default).adapter.field_naming_convention = 
    DataMapper::NamingConventions::Field::Underscored 
end
require 'rivendell/log_item'
require 'rivendell/log'
require 'rivendell/cart'
require 'rivendell/task'
require 'rivendell/dropbox'
require 'rivendell/group'
require 'rivendell/tools'

DataMapper.finalize

require "rubygems"
require "bundler/setup"
Bundler.require(:default)
module Rivendell
#  DataMapper::Model.raise_on_save_failure = true
  if File.exists?("/etc/rc.conf")
    # If we can, pull the config from Rivendell's own configuration.
    rdconf = IniFile.load("/etc/rd.conf")
    mysql = rdconf['mySQL']
    DataMapper.setup(:default, "mysql://#{mysql['Loginname']}:#{mysql['Password']}@#{mysql['Hostname']}/#{mysql['Database']}")
  else
    # Rivendell's default for most setups
    DataMapper.setup(:default, 'mysql://rduser:letmein@localhost/Rivendell')
  end
end
require 'rivendell/log_item'
require 'rivendell/log'
require 'rivendell/cart'
require 'rivendell/tools'

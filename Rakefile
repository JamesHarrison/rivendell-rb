require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "rivendellrb #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new('spec')

# If you want to make this the default task
task :default => :spec

namespace :db do

  def mysql_execute(database, command)
    system "echo \"#{command}\" | sudo -H mysql #{database}"
  end

  def mysql_load(database, file)
    system "sudo -H mysql #{database} < #{file}"
  end

  def mysql_admin(*args)
    system "sudo -H mysqladmin #{args.join(' ')}"
  end

  namespace :test do
    task :prepare => 'db:test:load'

    task :load => 'db:test:purge' do
      mysql_admin :create, 'rivendell_test'
      mysql_load 'rivendell_test', 'db/schema.sql'
      mysql_execute :mysql, "GRANT ALL PRIVILEGES ON rivendell_test.* TO 'rduser'@'localhost' IDENTIFIED BY 'letmein';"
      puts 'Database "rivendell_test" created'
    end

    task :purge do
      mysql_admin :drop, '--force rivendell_test'
    end
  end
end

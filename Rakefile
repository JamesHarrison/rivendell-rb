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

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "rivendell"
  gem.homepage = "http://github.com/JamesHarrison/rivendell-rb"
  gem.license = "MIT"
  gem.summary = %Q{Ruby and Datamapper interface to Rivendell's MySQL database, with utilities and tools}
  gem.description = %Q{This is a set of wrappers and tools for working with the Rivendell broadcast automation system to automatically create logs and work with the library}
  gem.email = "james@talkunafraid.co.uk"
  gem.authors = ["James Harrison"]
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
  gem.add_runtime_dependency 'dm-core'
  gem.add_runtime_dependency 'dm-types'
  gem.add_runtime_dependency 'dm-mysql-adapter'
  gem.add_runtime_dependency 'dm-validations'
  gem.add_runtime_dependency 'trollop'
  gem.add_runtime_dependency 'inifile'
  #  gem.add_development_dependency 'rspec', '> 1.2.3'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "rivendellrb #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

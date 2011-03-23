Gem::Specification.new do |s|
  s.name = %q{rivendell}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Harrison"]
  s.date = %q{2011-03-23}
  s.default_executable = %q{rivendell}
  s.description = %q{This is a set of wrappers and tools for working with the Rivendell broadcast automation system to automatically create logs and work with the library}
  s.email = %q{james@talkunafraid.co.uk}
  s.executables = ["rivendell"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/rivendell",
    "lib/rivendell.rb",
    "lib/rivendell/cart.rb",
    "lib/rivendell/log.rb",
    "lib/rivendell/log_item.rb",
    "lib/rivendell/tools.rb",
    "rivendell.gemspec",
    "test/helper.rb",
    "test/test_rivendellrb.rb"
  ]
  s.homepage = %q{http://github.com/JamesHarrison/rivendell-rb}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Ruby and Datamapper interface to Rivendell's MySQL database, with utilities and tools}
  s.test_files = [
    "test/helper.rb",
    "test/test_rivendellrb.rb"
  ]

end


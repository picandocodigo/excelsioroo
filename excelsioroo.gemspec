Gem::Specification.new do |s|
  s.name        = 'excelsioroo'
  s.version     = '0.0.1'
  s.executables << 'excelsioroo'
  s.date        = '2013-01-16'
  s.add_runtime_dependency "roo", ["= 1.2.3"]
  s.summary     = "Excelsioroo"
  s.description = "A gem to export spreadsheet files data into JSON"
  s.authors     = ["Fernando Briano"]
  s.email       = 'fernando@picandocodigo.net'
  s.files       = ["lib/excelsioroo.rb"]
  s.homepage    =
    'http://rubygems.org/gems/excelsioroo'
end

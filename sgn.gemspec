# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'sgn/version'

Gem::Specification.new do |s|
  s.name          = 'sgn'
  s.version       = Sgn::VERSION
  s.date          = '2013-04-16'
  s.summary       = "Webservice para Imobiliárias"
  s.description   = "Webservice para o sistema imobiliário http://www.sgn.com.br"
  s.authors       = ["Marcelo Jacobus"]
  s.email         = 'marcelo.jacobus@gmail.com'

  s.files         = [
    "README.md",
    "lib/sgn.rb",
    "lib/sgn/webservice.rb",
    "lib/sgn/error.rb"
  ]

  s.test_files    = Dir["spec/**/*.rb"]
  s.require_paths = ["lib"]
  s.homepage      = "https://github.com/mjacobus/sgn"

  # s.add_development_dependency "active_support"
  s.add_development_dependency "rspec"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "coveralls"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "rb-inotify"

  s.add_dependency "json"
  s.add_dependency "addressable"
end


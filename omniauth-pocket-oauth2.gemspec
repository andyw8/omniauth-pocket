# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-pocket-oauth2/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Greg Leppert"]
  gem.email         = ["greg@leppert.me"]
  gem.description   = "An Omniauth Strategy for Pocket"
  gem.summary       = "An Omniauth Strategy for Pocket"
  gem.homepage      = "https://github.com/andyw8/omniauth-pocket-oauth2"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-pocket-oauth2"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Pocket::VERSION

  gem.add_dependency 'omniauth', '>= 1.0'
  gem.add_dependency 'omniauth-oauth2', '>= 1.0'
  gem.add_development_dependency "rspec", "~> 2.7"
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end

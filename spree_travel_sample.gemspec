# encoding: UTF-8

require 'yaml'
yaml = YAML.load(File.read('SPREE_TRAVEL_VERSIONS'))
versions = yaml['gems']

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_travel_sample'
  s.version     = versions['spree_travel']
  s.summary     = 'Spree Travel Sample'
  s.description = 'Load travel sample data'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = ['Pedro Quintero', 'Miguel Sancho', 'Cesar Lage', 'Raul Perez-Alejo Neyra']
  s.email     = 'info@openjaf.com'
  s.homepage  = 'http://github.com/openjaf/spree_travel_sample'

  s.require_path = 'lib'
  s.requirements << 'none'

  #s.add_dependency 'spree_core', '~> ' + versions['spree']
  s.add_dependency 'colored'
  #s.add_dependency 'spree_travel_core'
  s.add_runtime_dependency 'spree_core',  '~> ' + versions['spree']

  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 3.0'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end

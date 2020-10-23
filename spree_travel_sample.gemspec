# encoding: UTF-8

require 'yaml'
yaml = YAML.load(File.read('SPREE_TRAVEL_VERSIONS'))
versions = yaml['gems']

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_travel_sample'
  s.version     = versions['spree_travel_core']
  s.summary     = 'Spree Travel Sample'
  s.description = 'Load travel sample data'
  s.required_ruby_version = '>= 2.6.5'

  s.author    = ['Pedro Quintero', 'Miguel Sancho', 'Cesar Lage', 'Raul Perez-alejo', 'Alejandro Dustet']
  s.email     = 'rperezalejo@gmail.com'
  s.homepage  = 'http://github.com/openjaf/spree_travel_sample'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_travel_core', '~> ' + versions['spree_travel_core']
  s.add_dependency 'spree_travel_car', '~> ' + versions['spree_travel_core']
  s.add_dependency 'ffaker'


  s.add_development_dependency 'byebug'


end

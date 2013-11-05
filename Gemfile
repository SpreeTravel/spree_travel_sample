CONFIG = :other
###########################################################################
case CONFIG
when :pqr
  GEMS_PATH = 'http://localhost/rubygems/'
  SPREE_PATH = 'file:///home/pqr/work/jaf/spree'
  SPREE_TRAVEL_PATH = 'file:///home/pqr/work/jaf/openjaf'
when :snc
  GEMS_PATH = 'file:///home/test/.rvm/gems/ruby-1.9.3-p392/bundler/gems/'
  SPREE_PATH = 'file:///media/Data/jaf/spree'
  SPREE_TRAVEL_PATH = 'file:///media/Data/jaf/spree_travel'
when :raul
  GEMS_PATH = 'http://localhost/rubygems/'
  SPREE_PATH = 'file:///home/raul/RubymineProjects/spree'
  SPREE_TRAVEL_PATH = 'file:///home/raul/RubymineProjects/openjaf'
else
  GEMS_PATH = 'http://rubygems.org'
  SPREE_PATH = 'https://github.com/spree'
  SPREE_TRAVEL_PATH = 'https://github.com/openjaf'
  PROTOCOL = :git
end
###########################################################################

source GEMS_PATH

#SPREE_GEMS
gem 'spree', '2.1.1'
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: '2-1-stable'
gem 'spree_related_products', github: 'spree/spree_related_products', branch: '2-1-stable'

# SPREE_GEMS (BY OPENJAF)
gem 'spree_property_type',        PROTOCOL => "#{SPREE_TRAVEL_PATH}/spree_property_type"

#SPREE_TRAVEL_GEMS
gem 'spree_travel_core',           PROTOCOL => "#{SPREE_TRAVEL_PATH}/spree_travel_core"


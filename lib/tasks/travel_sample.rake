require 'ffaker'
require 'pathname'
require 'spree/travel_sample'

namespace :spree_travel_sample do
  desc 'Loads travel sample data (options: PRODUCT_TYPE=[all, hotels, flight, etc.], default: all)'
  task :load => :environment do
    what =  ENV['PRODUCT_TYPE'] || 'all'
    SpreeTravelSample::Engine.load_travel_samples(what)
  end
end



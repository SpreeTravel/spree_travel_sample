require 'ffaker'
require 'pathname'
require 'spree/travel_sample'

namespace :spree_travel_sample do
  desc 'Loads travel sample data. specify PRODUCT_TYPE=[all, hotel, flight, etc.]'
  task :load => :environment do
    what =  ENV['PRODUCT_TYPE'] || 'all'
    SpreeTravelSample::Engine.load_travel_samples(what)
  end
end



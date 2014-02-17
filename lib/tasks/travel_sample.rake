require 'ffaker'
require 'pathname'
require 'spree/travel_sample'

namespace :spree_travel_sample do
  desc 'Loads travel sample data'
  task :load => :environment do
    SpreeTravelSample::Engine.load_travel_samples
  end
end



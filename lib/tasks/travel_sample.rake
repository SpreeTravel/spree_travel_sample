require 'ffaker'
require 'pathname'
require 'spree/travel_sample'

namespace :spree_travel_sample do

	namespace :load do

	  desc 'Loads travel sample data for hotels'
	  task :hotels do
	    SpreeTravelSample::Engine.load_travel_samples('hotels')
	  end

	  desc 'Loads travel sample data for packages'
	  task :packages do
	    SpreeTravelSample::Engine.load_travel_samples('packages')
	  end

	  desc 'Loads travel sample data for all product types'
	  task :all do
	    SpreeTravelSample::Engine.load_travel_samples('all')
	  end
	end
end



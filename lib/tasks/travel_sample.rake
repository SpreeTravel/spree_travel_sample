require 'ffaker'
require 'pathname'
require 'spree/travel_sample'

namespace :spree_travel_sample do

  namespace :load do

    desc 'Loads hotel travel sample data. '
    task :hotel => :environment do
      SpreeTravelSample::Engine.load_travel_samples('hotels')
    end

    desc 'Loads car travel sample data. '
    task :car => :environment do
      SpreeTravelSample::Engine.load_travel_samples('cars')
    end

    desc 'Loads cruises travel sample data. '
    task :cruise => :environment do
      SpreeTravelSample::Engine.load_travel_samples('cruises')
    end

    desc 'Loads flight travel sample data. '
    task :flight => :environment do
      SpreeTravelSample::Engine.load_travel_samples('flights')
    end

    desc 'Loads tour travel sample data. '
    task :tour => :environment do
      SpreeTravelSample::Engine.load_travel_samples('tours')
    end

  end

end

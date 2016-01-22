require 'spree_core'
require 'spree/travel_sample'

module SpreeTravelSample
  class Engine < Rails::Engine
    engine_name 'spree_travel_sample'

    def self.sample_hash
      {
        'common' => [
          'shipping_categories',
          'taxonomies',
          'taxons',
          #'property_types',
        ],
        'hotels' => [
          'taxons',
          # 'property_types',
          'properties',
          'products',
          'rates',
        ],
        'tours' => [
          'taxons',
          #'property_types',
          'properties',
          'products',
          'rates',
        ],
        'packages' => [
          'taxons',
          #'property_types',
          'properties',
          'products',
          'rates',
        ],
        'flights' => [
          #'taxonomies',
          #'taxons',
        ],
        'cruises' => [
          'taxons',  
          'products',
        ],
        'points' => [
          #'taxonomies',
          #'taxons',
        ],
        'cars' => [
          'taxons',
          'properties',
          'products',
          'rates'

        ]
      }

      #General
      #Spree::TravelSample.load_travel_sample("product_option_types")

      #Properties
      #Spree::TravelSample.load_travel_sample("properties_flight")
      #Spree::TravelSample.load_travel_sample("properties_rent_a_car")
      #Spree::TravelSample.load_travel_sample("properties_tour")
      #Spree::TravelSample.load_travel_sample("properties_transfer")

      #Taxon
      #Spree::TravelSample.load_travel_sample("taxons_flight")
      #Spree::TravelSample.load_travel_sample("taxons_tour")
      #Spree::TravelSample.load_travel_sample("taxons_transfer")
      #Spree::TravelSample.load_travel_sample("taxons_flight_destination")
      #Spree::TravelSample.load_travel_sample("taxons_thing_to_do")
    end

    def self.load_travel_dir(dir)
      files = self.sample_hash[dir]
      files.each do |file|
        Spree::TravelSample.load_travel_sample(dir, file)
      end
    end

    def self.load_travel_samples(what)
      if what == 'all'
        self.sample_hash.keys.each do |dir|
          self.load_travel_dir(dir)
        end
      else
        self.load_travel_dir('common')
        self.load_travel_dir(what)
      end

    end
  end
end

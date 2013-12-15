require 'spree_travel_core'
require 'spree_travel_sample'

module SpreeSample
  class Engine < Rails::Engine
    engine_name 'spree_travel_sample'

    # Needs to be here so we can access it inside the tests
    def self.load_travel_samples
        
      Spree::Sample.load_travel_sample("option_types")
      Spree::Sample.load_travel_sample("option_values")

      Spree::Sample.load_travel_sample("property_types")      
      Spree::Sample.load_travel_sample("properties_flight")
      Spree::Sample.load_travel_sample("properties_hotel")
      Spree::Sample.load_travel_sample("properties_program")
      Spree::Sample.load_travel_sample("properties_rent_a_car")
      Spree::Sample.load_travel_sample("properties_tour")
      Spree::Sample.load_travel_sample("properties_transfer")

      Spree::Sample.load_travel_sample("taxonomy_categories")      
      Spree::Sample.load_travel_sample("taxon_category")

      Spree::Sample.load_travel_sample("taxons_hotel")
      Spree::Sample.load_travel_sample("taxons_flight")            
      Spree::Sample.load_travel_sample("taxons_program")      
      Spree::Sample.load_travel_sample("taxons_tour")
      Spree::Sample.load_travel_sample("taxons_transfer")
      Spree::Sample.load_travel_sample("taxons_car_rental")
            
      Spree::Sample.load_travel_sample("taxonomy_destinations")
      Spree::Sample.load_travel_sample("taxons_destination")
      
      Spree::Sample.load_travel_sample("taxonomy_flight_destinations")
      Spree::Sample.load_travel_sample("taxons_flight_destination")
      
      Spree::Sample.load_travel_sample("taxonomy_things_to_do")
      Spree::Sample.load_travel_sample("taxons_thing_to_do")      
      
    end
  end
end

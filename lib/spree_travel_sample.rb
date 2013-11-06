require 'spree_travel_core'
require 'spree_travel_sample'

module SpreeTravelSample
  class Engine < Rails::Engine
    engine_name 'spree_travel_sample'

    # Needs to be here so we can access it inside the tests
    def self.load_travel_samples
        
      SpreeTravel::TravelSample.load_travel_sample("option_types")
      SpreeTravel::TravelSample.load_travel_sample("option_values")

      SpreeTravel::TravelSample.load_travel_sample("property_types")      
      SpreeTravel::TravelSample.load_travel_sample("properties_flight")
      SpreeTravel::TravelSample.load_travel_sample("properties_hotel")
      SpreeTravel::TravelSample.load_travel_sample("properties_program")
      SpreeTravel::TravelSample.load_travel_sample("properties_rent_a_car")
      SpreeTravel::TravelSample.load_travel_sample("properties_tour")
      SpreeTravel::TravelSample.load_travel_sample("properties_transfer")

      SpreeTravel::TravelSample.load_travel_sample("taxonomy_categories")      
      SpreeTravel::TravelSample.load_travel_sample("taxon_category")

      SpreeTravel::TravelSample.load_travel_sample("taxons_hotel")
      SpreeTravel::TravelSample.load_travel_sample("taxons_flight")            
      SpreeTravel::TravelSample.load_travel_sample("taxons_program")      
      SpreeTravel::TravelSample.load_travel_sample("taxons_tour")
      SpreeTravel::TravelSample.load_travel_sample("taxons_transfer")
      SpreeTravel::TravelSample.load_travel_sample("taxons_car_rental")
            
      SpreeTravel::TravelSample.load_travel_sample("taxonomy_destinations")
      SpreeTravel::TravelSample.load_travel_sample("taxons_destination")
      
      SpreeTravel::TravelSample.load_travel_sample("taxonomy_flight_destinations")
      SpreeTravel::TravelSample.load_travel_sample("taxons_flight_destination")
      
      SpreeTravel::TravelSample.load_travel_sample("taxonomy_things_to_do")
      SpreeTravel::TravelSample.load_travel_sample("taxons_thing_to_do")      
      
    end
  end
end

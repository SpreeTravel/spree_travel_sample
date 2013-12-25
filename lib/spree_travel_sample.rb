require 'spree_core'
#require 'spree_travel_core'
#require 'spree/travel_sample'

module SpreeTravelSample
  class Engine < Rails::Engine
    engine_name 'spree_travel_sample'

    # Needs to be here so we can access it inside the tests
    def self.load_travel_samples
        
      Spree::TravelSample.load_travel_sample("option_types")
      Spree::TravelSample.load_travel_sample("option_values")

      Spree::TravelSample.load_travel_sample("property_types")      
      Spree::TravelSample.load_travel_sample("properties_flight")
      Spree::TravelSample.load_travel_sample("properties_hotel")
      Spree::TravelSample.load_travel_sample("properties_program")
      Spree::TravelSample.load_travel_sample("properties_rent_a_car")
      Spree::TravelSample.load_travel_sample("properties_tour")
      Spree::TravelSample.load_travel_sample("properties_transfer")

      Spree::TravelSample.load_travel_sample("taxonomy_categories")      
      Spree::TravelSample.load_travel_sample("taxon_category")

      Spree::TravelSample.load_travel_sample("taxons_hotel")
      Spree::TravelSample.load_travel_sample("taxons_flight")            
      Spree::TravelSample.load_travel_sample("taxons_program")      
      Spree::TravelSample.load_travel_sample("taxons_tour")
      Spree::TravelSample.load_travel_sample("taxons_transfer")
      Spree::TravelSample.load_travel_sample("taxons_car_rental")
            
      Spree::TravelSample.load_travel_sample("taxonomy_destinations")
      Spree::TravelSample.load_travel_sample("taxons_destination")
      
      Spree::TravelSample.load_travel_sample("taxonomy_flight_destinations")
      Spree::TravelSample.load_travel_sample("taxons_flight_destination")
      
      Spree::TravelSample.load_travel_sample("taxonomy_things_to_do")
      Spree::TravelSample.load_travel_sample("taxons_thing_to_do")      

      #temporal because shipping category is a required field to Product model
      Spree::TravelSample.load_travel_sample("shipping_categories")       

      Spree::TravelSample.load_travel_sample("products")  
      Spree::TravelSample.load_travel_sample("product_properties")
      Spree::TravelSample.load_travel_sample("product_option_types")    
      
      Spree::TravelSample.load_travel_sample("assets")    
           

    end
  end
end

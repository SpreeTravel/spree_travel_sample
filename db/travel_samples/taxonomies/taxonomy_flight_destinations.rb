taxonomy = Spree::Taxonomy.find_or_create_by_name("Flight Destinations")
puts taxonomy.inspect

taxonomy = Spree::Taxonomy.find_or_create_by_name("Things to do")
puts taxonomy.inspect

taxonomies = [
  { :name => "Destination", :position => 1 },
  { :name => "Categories", :position => 2 },
]

taxonomies.each do |taxonomy_attrs|
  Spree::TravelSample.create_taxonomy(taxonomy_attrs)
end

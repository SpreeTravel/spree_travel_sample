taxonomies = [
  { :name => "Categories" },
  { :name => "Destinations" }
]

taxonomies.each do |taxonomy_attrs|
  Spree::Taxonomy.find_or_create_by_name(taxonomy_attrs)
end

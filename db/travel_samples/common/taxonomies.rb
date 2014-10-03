taxonomies = [
  { :name => "Destination", :position => 1 },
  { :name => "Category", :position => 2 },
]

taxonomies.each do |taxonomy_attrs|
  tx = Spree::Taxonomy.where(:name => taxonomy_attrs[:name]).first_or_create(taxonomy_attrs)
end

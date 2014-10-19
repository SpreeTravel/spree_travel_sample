taxonomies = [
  { :name => "Things to do", :position => 4 },
]

taxonomies.each do |taxonomy_attrs|
  tx = Spree::Taxonomy.where(:name => taxonomy_attrs[:name]).first_or_create(taxonomy_attrs)
end

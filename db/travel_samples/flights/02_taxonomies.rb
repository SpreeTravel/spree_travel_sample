$taxonomies = [
  { :name => "Destination", :position => 1 },
  { :name => "Category", :position => 2 },
  { :name => "Flight Destination", :position => 3 },
  { :name => "Thing to do", :position => 4 },
]

Spree::Taxonomy.destroy_all
Spree::Taxon.destroy_all

$taxonomies.each do |taxonomy_attrs|
  tx = Spree::Taxonomy.create!(taxonomy_attrs)
end

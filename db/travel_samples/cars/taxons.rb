taxons = [
  { :name => "Car", :taxonomy => "Category", :parent => 'Category'}
]

taxons.each do |taxon_attrs|
  Spree::TravelSample.create_taxon(taxon_attrs)
end
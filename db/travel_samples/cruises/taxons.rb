taxons = [
  { :name => "Cruise", :taxonomy => "Categories", :parent => 'Categories'}
]

taxons.each do |taxon_attrs|
  Spree::TravelSample.create_taxon(taxon_attrs)
end

taxons = [
  { :name => "Hotel", :taxonomy => "Category", :parent => 'Category'},
    { :name => "Hotel City", :taxonomy => "Category", :parent => 'Hotel'},
    { :name => "Hotel Rural", :taxonomy => "Category", :parent => 'Hotel'},
    { :name => "Hotel Beach", :taxonomy => "Category", :parent => 'Hotel'},
]

taxons.each do |taxon_attrs|
  Spree::TravelSample.create_taxon(taxon_attrs)
end

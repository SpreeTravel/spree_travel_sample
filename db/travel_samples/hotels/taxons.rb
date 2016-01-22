taxons = [
  { :name => "Hotel", :taxonomy => "Categories", :parent => 'Categories'},
    { :name => "Hotel City", :taxonomy => "Categories", :parent => 'Hotel'},
    { :name => "Hotel Rural", :taxonomy => "Categories", :parent => 'Hotel'},
    { :name => "Hotel Beach", :taxonomy => "Categories", :parent => 'Hotel'},
]

taxons.each do |taxon_attrs|
  Spree::TravelSample.create_taxon(taxon_attrs)
end

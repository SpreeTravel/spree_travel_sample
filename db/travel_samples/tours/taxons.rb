taxons = [
  { :name => "Tour", :taxonomy => "Categories", :parent => 'Categories'},
    { :name => "Nautic", :taxonomy => "Categories", :parent => 'Tour'},
    { :name => "Overnight", :taxonomy => "Categories", :parent => 'Tour'},
    { :name => "City", :taxonomy => "Categories", :parent => 'Tour'},
    { :name => "Aereal", :taxonomy => "Categories", :parent => 'Tour'},
]

taxons.each do |taxon_attrs|
  Spree::TravelSample.create_taxon(taxon_attrs)
end

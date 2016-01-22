taxons = [
  { :name => "Package", :taxonomy => "Categories", :parent => 'Category'},
    { :name => "Hunting & Fishing", :taxonomy => "Categories", :parent => 'Package'},
    { :name => "Sun & Beach", :taxonomy => "Categories", :parent => 'Package'},
    { :name => "Ecotourism", :taxonomy => "Categories", :parent => 'Package'},
    { :name => "History & Culture", :taxonomy => "Categories", :parent => 'Package'},
]

taxons.each do |taxon_attrs|
  Spree::TravelSample.create_taxon(taxon_attrs)
end

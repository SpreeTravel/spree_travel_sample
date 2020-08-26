taxons = [
  { :name => "Package", :taxonomy => "Category", :parent => 'Category'},
    { :name => "Hunting & Fishing", :taxonomy => "Category", :parent => 'Package'},
    { :name => "Sun & Beach", :taxonomy => "Category", :parent => 'Package'},
    { :name => "Ecotourism", :taxonomy => "Category", :parent => 'Package'},
    { :name => "History & Culture", :taxonomy => "Category", :parent => 'Package'},
]

taxons.each do |taxon_attrs|
  Spree::TravelSample.create_taxon(taxon_attrs)
end

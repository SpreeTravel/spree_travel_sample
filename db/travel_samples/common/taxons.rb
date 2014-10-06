taxons = [
  {
    :name => "Destination",
    :taxonomy => "Destination",
    :position => 0
  },
  {
    :name => "Category",
    :taxonomy => "Category",
    :position => 1
  },
]

taxons.each do |taxon_attrs|
  Spree::TravelSample.create_taxon(taxon_attrs)
end

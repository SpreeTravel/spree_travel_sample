# frozen_string_literal: true

taxonomies = [
  { name: 'Destination', position: 1 },
  { name: 'Category', position: 2 }
]

taxonomies.each do |taxonomy_attrs|
  Spree::TravelSample.create_taxonomy(taxonomy_attrs)
end

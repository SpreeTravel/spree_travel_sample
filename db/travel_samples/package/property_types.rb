property_types = [
  { name: 'Program Include', },
]

property_types.each do |hash|
  Spree::PropertyType.create!(hash)
end


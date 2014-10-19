shipping_attrs = [
  {:name => 'Default'}
]

for attrs in shipping_attrs
  Spree::TravelSample.create_shipping_category(attrs)
end

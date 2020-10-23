# frozen_string_literal: true

shipping_attrs = [
  { name: 'Default' }
]

shipping_attrs.each do |attrs|
  Spree::TravelSample.create_shipping_category(attrs)
end

product_types = [
  {
    :name => "Spree::Product",
    :presentation => "Product",
    :partial_prefix => "product",
    :description => "",
    :enabled => true,
  },
  {
    :name => "Spree::ProductTravel",
    :presentation => "Generic Travel Product",
    :partial_prefix => "travel",
    :description => "",
    :enabled => true,
  },
  {
    :name => "Spree::ProductAccommodation",
    :presentation => "Accommodation",
    :partial_prefix => "accommodation",
    :description => "",
    :enabled => true,
  },
  {
    :name => "Spree::ProductHotel",
    :presentation => "Hotel",
    :partial_prefix => "hotel",
    :description => "",
    :enabled => true,
  }
]


product_types.each do |product_type|
  product = Spree::ProductType.new(product_type)
  product.save!
end


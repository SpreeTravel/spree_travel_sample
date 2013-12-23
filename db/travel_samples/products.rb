shipping_category = Spree::ShippingCategory.find_by_name!("Default")

default_attrs = {
  :description => Faker::Lorem.paragraph,
  :available_on => Time.zone.now
}

products = [
  {
    :name => "Hotel Ruby on Rails",
    :shipping_category => shipping_category,
    :price => 1599,
  },
  {
    :name => "Hotel Ruby on Rails Bag",
    :shipping_category => shipping_category,
    :price => 22.99,
  },
  {
    :name => "Hotel Ruby on Rails Baseball Jersey",
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Hotel Ruby on Rails Jr. Spaghetti",
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Hotel Ruby on Rails Ringer T-Shirt",
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Hotel Ruby Baseball Jersey",
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Hotel Apache Baseball Jersey",
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Hotel Spree Baseball Jersey",
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Hotel Spree Jr. Spaghetti",
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Hotel Spree Ringer T-Shirt",
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Hotel Spree Tote",
    :shipping_category => shipping_category,
    :price => 15.99,
  },
  {
    :name => "Hotel Spree Bag",
    :shipping_category => shipping_category,
    :price => 22.99,
  },
  {
    :name => "Hotel Ruby on Rails Mug",
    :shipping_category => shipping_category,
    :price => 13.99,
  },
  {
    :name => "Hotel Ruby on Rails Stein",
    :shipping_category => shipping_category,
    :price => 16.99,
  },
  {
    :name => "Hotel Spree Stein",
    :shipping_category => shipping_category,
    :price => 16.99,
  },
  {
    :name => "Hotel Spree Mug",
    :shipping_category => shipping_category,
    :price => 13.99,
  }
]

products.each do |product_attrs|
#  eur_price = product_attrs.delete(:eur_price)
  Spree::Config[:currency] = "USD"

  default_shipping_category = Spree::ShippingCategory.find_by_name!("Default")
  product = Spree::Product.create!(default_attrs.merge(product_attrs))
#  Spree::Config[:currency] = "EUR"
#  product.reload
#  product.price = eur_price
  product.shipping_category = default_shipping_category
  product.save!
end


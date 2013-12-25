shipping_category = Spree::ShippingCategory.find_by_name!("Default")

default_attrs = {
  :description => Faker::Lorem.paragraph,
  :available_on => Time.zone.now
}

products = [
  {
    :name => "Ruby on Rails Tote",
    :shipping_category => shipping_category,
    :price => 15.99,
  },
  {
    :name => "Ruby on Rails Bag",
    :shipping_category => shipping_category,
    :price => 22.99,
  },
  {
    :name => "Ruby on Rails Baseball Jersey",
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Ruby on Rails Jr. Spaghetti",
    :shipping_category => shipping_category,
    :price => 19.99,

  },
  {
    :name => "Ruby on Rails Ringer T-Shirt",
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Ruby Baseball Jersey",
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Apache Baseball Jersey",
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Spree Baseball Jersey",
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Spree Jr. Spaghetti",
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Spree Ringer T-Shirt",
    :shipping_category => shipping_category,
    :price => 19.99,
  },
  {
    :name => "Spree Tote",
    :shipping_category => shipping_category,
    :price => 15.99,
  },
  {
    :name => "Spree Bag",
    :shipping_category => shipping_category,
    :price => 12.99,
  },
  {
    :name => "Ruby on Rails Mug",
    :shipping_category => shipping_category,
    :price => 13.99,
  },
  {
    :name => "Ruby on Rails Stein",
    :shipping_category => shipping_category,
    :price => 16.99,
  },
  {
    :name => "Spree Stein",
    :shipping_category => shipping_category,
    :price => 16.99,
  },
  {
    :name => "Spree Mug",
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


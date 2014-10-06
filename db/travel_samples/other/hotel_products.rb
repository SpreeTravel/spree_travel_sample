shipping_category = Spree::ShippingCategory.find_by_name!("Default")
city              = Spree::Taxon.find_by_name!("City")
beach             = Spree::Taxon.find_by_name!("Beach")
natural           = Spree::Taxon.find_by_name!("Natural")

default_attrs = {
  :description => Faker::Lorem.paragraph,
  :available_on => Time.zone.now
}

products = [
  {
    :name => "Hotel Nacional de Cuba",
    :price => 15.99,
  },
  {
    :name => "Hotel Occidental Miramar",
    :price => 22.99,
  },
  {
    :name => "Hotel Melia Habana Libre",
    :price => 19.99,
  },
  {
    :name => "Hotel Melia Cohiba",
    :price => 19.99,
  },
  {
    :name => "Hotel Ambos Mundos",
    :price => 19.99,
  },
  {
    :name => "Hotel Copacabana",
    :price => 19.99,
  },
  {
    :name => "Hotel Riviera",
    :price => 19.99,
  },
  {
    :name => "Hotel Telegrafo",
    :price => 19.99,
  }
]


products.each do |product_attrs|
#  eur_price = product_attrs.delete(:eur_price)
  Spree::Config[:currency] = "USD"

  product = Spree::ProductHotel.new(default_attrs.merge(product_attrs))
  Spree::Config[:currency] = "EUR"
#  product.reload
#  product.price = eur_price
  product.shipping_category = shipping_category
  product.taxons << city
  product.save!
end


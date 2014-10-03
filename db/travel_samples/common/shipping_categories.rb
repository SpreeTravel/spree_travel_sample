puts "[Shipping Categories] deleteing all".red
Spree::ShippingCategory.destroy_all

puts "[Shipping Category] creating: Default".green
sc = Spree::ShippingCategory.create(:name => 'Default')

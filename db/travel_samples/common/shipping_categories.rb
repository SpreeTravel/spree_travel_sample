if Spree::ShippingCategory.where(:name => 'Default').first
  puts "skipped: ".yellow + "ShippingCategory: Default"
else
  Spree::ShippingCategory.create!(:name => 'Default')
  puts "created: ".green + "ShippingCategory: Default"
end

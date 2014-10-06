Spree::ProductHotel.all.each do |product|
  product.generate_variants
end

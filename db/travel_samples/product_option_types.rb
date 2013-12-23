Spree::Sample.load_sample("products")

adult = Spree::OptionType.find_by_presentation!('Adult')
child = Spree::OptionType.find_by_presentation!('Child')
infant = Spree::OptionType.find_by_presentation!('Infant')
pax = Spree::OptionType.find_by_presentation!('Pax')
season = Spree::OptionType.find_by_presentation!('Season')
meal_plan = Spree::OptionType.find_by_presentation!('Meal Plan')



hotels = ["Hotel Ruby on Rails",
"Hotel Ruby on Rails Bag",
"Hotel Ruby on Rails Baseball Jersey",
"Hotel Ruby on Rails Jr. Spaghetti",
"Hotel Ruby on Rails Ringer T-Shirt",
"Hotel Ruby Baseball Jersey",
"Hotel Apache Baseball Jersey",
"Hotel Spree Baseball Jersey",
"Hotel Spree Jr. Spaghetti",
"Hotel Spree Ringer T-Shirt",
"Hotel Spree Tote",
"Hotel Spree Bag",
"Hotel Ruby on Rails Mug",
"Hotel Ruby on Rails Stein",
"Hotel Spree Stein",
"Hotel Spree Mug"]

hotels.each do |name_hotel|
  hotel = Spree::Product.find_by_name!(name_hotel)
  hotel.option_types = [adult, child, infant, pax, season, meal_plan]
  hotel.save!
end


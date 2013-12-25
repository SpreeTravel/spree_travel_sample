Spree::Sample.load_sample("products")

adult = Spree::OptionType.find_by_presentation!('Adult')
child = Spree::OptionType.find_by_presentation!('Child')
infant = Spree::OptionType.find_by_presentation!('Infant')
pax = Spree::OptionType.find_by_presentation!('Pax')
season = Spree::OptionType.find_by_presentation!('Season')
meal_plan = Spree::OptionType.find_by_presentation!('Meal Plan')



hotels = ["Ruby on Rails Tote",
"Ruby on Rails Bag",
"Ruby on Rails Baseball Jersey",
"Ruby on Rails Jr. Spaghetti",
"Ruby on Rails Ringer T-Shirt",
"Ruby Baseball Jersey",
"Apache Baseball Jersey",
"Spree Baseball Jersey",
"Spree Jr. Spaghetti",
"Spree Ringer T-Shirt",
"Spree Tote",
"Spree Bag",
"Ruby on Rails Mug",
"Ruby on Rails Stein",
"Spree Stein",
"Spree Mug"]

hotels.each do |name_hotel|
  hotel = Spree::Product.find_by_name!(name_hotel)
  hotel.option_types = [adult, child, infant, pax, season, meal_plan]
  hotel.save!
end


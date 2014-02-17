
hotels      = Spree::Product.all
rooms       = Spree::OptionValue.where(:option_type_id=>3)
meal_plans  = Spree::OptionValue.where(:option_type_id=>4)

rates = [
  {
        product: hotels[0], 
        room_id: rooms[0].id, 
        start_date: "2014-02-01", 
        end_date: "2014-04-30", 
        plan_id: meal_plans[0].id, 
        adults_one: 34.0, 
        adults_two: 32.0, 
        adults_three: 21.0, 
        children_one: 12.0, 
        children_two: nil, 
        adults_extra: nil, 
        max_adults: 3, 
        max_children: 1, 
        children_extra: nil
  },
  {
        product: hotels[0], 
        room_id: rooms[0].id,
        start_date: "2014-02-01", 
        end_date: "2014-04-30", 
        plan_id: meal_plans[1].id, 
        adults_one: 36.0, 
        adults_two: 34.0, 
        adults_three: 23.0, 
        children_one: 14.0, 
        children_two: nil, 
        adults_extra: nil, 
        max_adults: 3, 
        max_children: 1, 
        children_extra: nil

  },
]

rates.each do |rate|
  rate = Spree::RateHotel.create!(rate)
  rate.save!
end







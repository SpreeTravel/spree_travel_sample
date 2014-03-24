hotels      = Spree::Product.all
rooms       = Spree::OptionValue.where(:option_type_id=>3)
meal_plans  = Spree::OptionValue.where(:option_type_id=>4)
adults      = [1..2]
children    = [0..1]
seasons     = 2 #4
rates       = []

hotels.each do |h|
  rooms.to_a.each_with_index do |r, r_index|
    meal_plans.to_a.each_with_index do |mp, mp_index|
      for s in 1..seasons
        rates << {
          product: h, 
          room_id: r.id, 
          start_date: "2014-01-01".to_date + (s - 1) * 180, 
          end_date: "2014-01-01".to_date + (s * 180) - 1, 
          plan_id: mp.id, 
          adults_one: 20 + 4 * r_index*mp_index + rand(15), 
          adults_two: 17 + 3 * r_index*mp_index + rand(12), 
          adults_three: 15 + 2 * r_index*mp_index + rand(10), 
          children_one: 10 + 2 * r_index*mp_index + rand(7), 
          children_two: 8 + 1 * r_index*mp_index + rand(5), 
          adults_extra: 35, 
          max_adults: 2, 
          max_children: 1, 
          children_extra: 15
        }
      end
    end
  end
end

rates.each { |rate| Spree::RateHotel.create!(rate) }







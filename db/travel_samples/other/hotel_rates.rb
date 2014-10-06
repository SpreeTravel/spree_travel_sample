room_ot = Spree::OptionType.find_by_name('room')
rooms = Spree::OptionValue.where(:option_type => room_ot)

plan_ot = Spree::OptionType.find_by_name('plan')
plans = Spree::OptionValue.where(:option_type => plan_ot)

adult_ot = Spree::OptionType.find_by_name('adult')
adults = Spree::OptionValue.where(:option_type => adult_ot)
max_adults = adults.map {|e| e.presentation.to_i }.max

child_ot = Spree::OptionType.find_by_name('child')
children = Spree::OptionValue.where(:option_type => child_ot)
max_children = children.map {|e| e.presentation.to_i }.max

seasons = 2

hotels = Spree::Product.all

hotels.each do |hotel|
  rooms.to_a.each_with_index do |room, room_index|
    plans.to_a.each_with_index do |plan, plan_index|
      for s in 1..seasons
        Spree::RateHotel.create!( {
          product: hotel, 
          room_id: room.id, 
          start_date: "2014-01-01".to_date + (s - 1) * 180, 
          end_date: "2014-01-01".to_date + (s * 180) - 1, 
          plan_id: plan.id, 
          adults_one: 20 + 4 * room_index * plan_index + rand(15), 
          adults_two: 17 + 3 * room_index * plan_index + rand(12), 
          adults_three: 15 + 2 * room_index * plan_index + rand(10), 
          children_one: 10 + 2 * room_index * plan_index + rand(7), 
          children_two: 8 + 1 * room_index * plan_index + rand(5), 
          adults_extra: 35, 
          max_adults: max_adults, 
          max_children: 1, # max_children, 
          children_extra: 15
        } )
      end
    end
  end
end








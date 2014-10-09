hotels = Spree::Product.where(:product_type => Spree::ProductType.find_by_name('hotel'))
years = 2
seasons = 4
plans = Spree::OptionType.find_by_name('plan').option_values

def price(base, multiplier, adder)
  number = rand(base.max - base.min) + base.min
  number *= multiplier
  number += rand(adder.max - adder.min + 1) + adder.min
  number
end

for hotel in hotels
  for room in hotel.variants
    for year in 1..years
      for season in 1..seasons
        for plan in plans
          start_date = "2014-01-01".to_date + (year - 1) * 365 + (season - 1) * (365 / seasons)
          end_date = "2014-01-01".to_date + (year - 1) * 365 + season * (365 / seasons) - 1

          rate = Spree::Rate.new
          rate.variant_id = room.id
          rate.set_option_value(:start_date, start_date)
          rate.set_option_value(:end_date, end_date)
          rate.set_option_value(:plan, plan.id)
          rate.set_option_value(:simple, price(100..150, 1, 5..15))
          rate.set_option_value(:double, price(80..120, 2, 10..25))
          rate.set_option_value(:triple, price(60..100), 3, 15..40)
          rate.set_option_value(:first_child, price(30..50, 1, 0..5))
          rate.set_option_value(:second_child, price(20..40, 1, 5..10))
        end
      end
    end
  end
end

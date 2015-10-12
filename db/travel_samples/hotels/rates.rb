hotels = Spree::Product.where(:product_type => Spree::ProductType.find_by_name('hotel'))
years = 1 # HERE
seasons = 2 # HERE
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
          start_date = Date.today + (year - 1) * 365 + (season - 1) * (365 / seasons)
          end_date = Date.today + (year - 1) * 365 + season * (365 / seasons) - 1

          rate = Spree::Rate.new
          rate.variant_id = room.id
          rate.first_time!
          rate.save
          rate.set_persisted_option_value(:start_date, start_date)
          rate.set_persisted_option_value(:end_date, end_date)
          rate.set_persisted_option_value(:plan, plan.id)
          rate.set_persisted_option_value(:simple, simple = price(100..150, 1, 5..15))
          rate.set_persisted_option_value(:double, double = price(80..120, 2, 10..25))
          rate.set_persisted_option_value(:triple, triple = price(60..100, 3, 15..40))
          rate.set_persisted_option_value(:first_child, child1 = price(30..50, 1, 0..5))
          rate.set_persisted_option_value(:second_child, child2 = price(20..40, 1, 5..10))
          rate.save
          string = "Rate: #{hotel.name}: (room:#{room.id}), (plan:#{plan.id}) (start:#{start_date}) (end:#{end_date})"
          string += " (simple:#{simple}) (double:#{double}) (triple:#{triple})"
          puts "  - created: ".green + string
        end
      end
    end
  end
end

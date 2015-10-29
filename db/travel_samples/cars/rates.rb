cars = Spree::Product.where(:product_type => Spree::ProductType.find_by_name('car'))
years = 1 # HERE
seasons = 2 # HERE

def price(base, multiplier, adder)
  number = rand(base.max - base.min) + base.min
  number *= multiplier
  number += rand(adder.max - adder.min + 1) + adder.min
  number
end

for car in cars
  for variant in car.variants
    for year in 1..years
      for season in 1..seasons
        start_date = Date.today + (year - 1) * 365 + (season - 1) * (365 / seasons)
        end_date = Date.today + (year - 1) * 365 + season * (365 / seasons) - 1

        rate = Spree::Rate.new
        rate.first_time!
        rate.variant_id = variant.id
        rate.save
        rate.set_persisted_option_value(:start_date, start_date)
        rate.set_persisted_option_value(:end_date, end_date)
        rate.set_persisted_option_value(:three_six_days, three_six_days = price(30..60, 1, 0..5))
        rate.set_persisted_option_value(:seven_thirteen_days, seven_thirteen_days = price(20..40, 1, 5..10))
        rate.set_persisted_option_value(:fourteen_tuentynine_days, fourteen_tuentynine_days = price(10..20, 1, 5..15))
        rate.save
        string = "Rate: #{car.name}: (start:#{start_date}) (end:#{end_date}) (three_six_days:#{three_six_days})"
        string += "(seven_thirteen_days:#{seven_thirteen_days}) (fourteen_tuentynine_days:#{fourteen_tuentynine_days})"
        puts "  - created: ".green + string
      end
    end
  end
end

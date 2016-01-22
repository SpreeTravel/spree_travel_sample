tours = Spree::Product.where(:product_type => Spree::ProductType.find_by_name('tour'))
years = 1 # HERE
seasons = 2 # HERE

def price(base, multiplier, adder)
  number = rand(base.max - base.min) + base.min
  number *= multiplier
  number += rand(adder.max - adder.min + 1) + adder.min
  number
end

for tour in tours
  for year in 1..years
    for season in 1..seasons
      start_date = Date.today + (year - 1) * 365 + (season - 1) * (365 / seasons)
      end_date = Date.today + (year - 1) * 365 + season * (365 / seasons) - 1

      rate = Spree::Rate.new
      rate.first_time!
      rate.variant_id = tour.variants.first.id
      rate.save
      rate.set_persisted_option_value(:start_date, start_date)
      rate.set_persisted_option_value(:end_date, end_date)
      rate.set_persisted_option_value(:one_child, child = price(10..20, 1, 0..5))
      rate.set_persisted_option_value(:one_adult, adult = price(20..40, 1, 5..10))
      rate.save
      string = "Rate: #{tour.name}: (start:#{start_date}) (end:#{end_date}) (child:#{child}) (adult:#{adult})"
      puts "  - created: ".green + string
    end
  end
end

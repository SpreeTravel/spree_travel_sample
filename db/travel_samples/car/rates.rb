# frozen_string_literal: true

product_type = Spree::ProductType.find_by_name('car')
cars         = Spree::Product.where(product_type: product_type)
years        = 1
seasons      = 2

def price(base, multiplier, adder)
  number = rand(base.max - base.min) + base.min
  number *= multiplier
  number += rand(adder.max - adder.min + 1) + adder.min
  number
end

cars.each do |car|
  car.variants.each do |variant|
    (1..years).each do |year|
      (1..seasons).each do |season|
        start_date = Date.today + (year - 1) * 365 + (season - 1) * (365 / seasons)
        end_date = Date.today + (year - 1) * 365 + season * (365 / seasons) - 1
        rate = Spree::Rate.new
        rate.variant_id = variant.id
        rate.first_time!
        rate.save
        rate.set_persisted_option_value(:start_date, start_date)
        rate.set_persisted_option_value(:end_date, end_date)
        rate.set_persisted_option_value(:three_six_days, simple = price(100..150, 1, 5..15))
        rate.set_persisted_option_value(:seven_thirteen_days, double = price(80..120, 2, 10..25))
        rate.set_persisted_option_value(:fourteen_twentynine_days, triple = price(60..100, 3, 15..40))
        rate.save
        string = "Rate: #{car.name}: (start:#{start_date}) (end:#{end_date})"
        puts '  - created: ' + string
      end
    end
  end
end

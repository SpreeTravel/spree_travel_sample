# frozen_string_literal: true

### Some Global Variables
shipping_category       = Spree::ShippingCategory.first
amount_of_fake_products = 5
available_on            = Time.now - 1.day
product_type            = Spree::ProductType.find_by(name: 'car')
car_calculator          = Spree::TravelCalculator.find_by(name: 'Spree::CalculatorCar')
category_option_type    = Spree::OptionType.find_by(name: 'category')
properties              = Spree::Property.all.to_a

### Destroying Products
Spree::Product.where(product_type: product_type).destroy_all

def generate_variants(product, category_option_value)
  variations(product, category_option_value).each do |array|
    puts "  * variant: #{array[0].presentation} #{array[1].presentation}"
    variant = Spree::Variant.new
    variant.sku = FFaker.bothify('???-######').upcase
    variant.price = 0
    variant.product_id = product.id
    variant.calculator = product.product_type.calculator
    string = 'PRODUCT:' + " #{product.name}: "
    array.each do |ov|
      opt_name = ov.option_type.name
      opt_value = ov.name
      string += "#{opt_name.upcase}: #{opt_value}, "
      variant.set_option_value(opt_name, opt_value)
    end
    variant.save
  end
end

def variations(product, category_option_value)
  the_big_array = []
  product.option_types.last.option_values.each do |transmission_option_value|
    the_big_array << [category_option_value, transmission_option_value]
  end
  the_big_array
end

### Creating Products
category_option_type.option_values.each do |category_option_value|
  amount_of_fake_products.times do
    name        = FFaker::Vehicle.make + ' ' + FFaker::Vehicle.model
    price       = rand(20..119).to_i / 5 * 5
    description = FFaker::Lorem.paragraphs(rand(1..5)).join('<br>')
    sku         = FFaker.bothify('???-######').upcase

    product_attrs = {
      name: name,
      price: price,
      description: description,
      sku: sku,
      shipping_category_id: shipping_category.id,
      available_on: available_on,
      product_type_id: product_type.id,
      calculator_id: car_calculator.id
    }

    product = Spree::Product.create(product_attrs)
    puts "created: " + "Product: #{product_attrs[:name]}"

    generate_variants(product, category_option_value)

    properties.sample(8).each do |property|
      product_properties_attrs = {
        product_id: product.id,
        property_id: property.id,
        value: 'yes'
      }
      Spree::TravelSample.create_product_properties(product_properties_attrs)
    end
  end
end

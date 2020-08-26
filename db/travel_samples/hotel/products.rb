### Some Global Variables
place_taxonomy    = Spree::Taxonomy.find_by_name('Destination')
place_taxons      = Spree::Taxon.where(taxonomy_id: place_taxonomy.id).to_a
place_taxons.shift
category_taxonomy = Spree::Taxonomy.find_by_name('Category')
category_taxons   = Spree::Taxon.where(taxonomy_id: category_taxonomy.id).where(name: 'Hotel').first.self_and_descendants.to_a
shipping_category = Spree::ShippingCategory.first
properties        = Spree::Property.all.to_a
fake_products     = 25 # HERE
available_on      = Time.now - 1.day
product_type      = Spree::ProductType.where(name: 'hotel').first
hotel_calculator  = Spree::TravelCalculator.find_by_name('Spree::CalculatorHotel')

### Destroying Products
Spree::Product.where(product_type: Spree::ProductType.find_by_name('hotel')).destroy_all

def generate_variants(product)
  variations(product).each do |array|
    variant = Spree::Variant.new
    variant.sku = FFaker.bothify('???-######').upcase
    variant.price = 0
    variant.product_id = product.id
    variant.calculator = product.product_type.calculator
    string = "PRODUCT:" + " #{product.name}: "
    for ov in array
      opt_name = ov.option_type.name
      opt_value = ov.name
      string += "#{opt_name.upcase}: #{opt_value}, "
      variant.set_option_value(opt_name, opt_value)
    end
    variant.save
  end
end

def variations(product)
  the_array = []
  recursive_variations(product.option_types, the_array)
  the_array
end

def recursive_variations(the_option_types, the_big_array, index = 0, array = [])
  if the_option_types.length == index
    the_big_array << array.clone
  else
    for option_value in the_option_types[index].option_values
      array[index] = option_value
      recursive_variations(the_option_types, the_big_array, index + 1, array)
    end
  end
end

### Creating Products
fake_products.times do
  the_properties = (1..rand(properties.length)).map { properties.sample }.uniq
  the_taxons = [place_taxons.sample, category_taxons.sample]
  the_name = "Hotel: " + FFaker::Company.name
  the_price = (rand(100) + 20).to_i / 5 * 5
  the_description = FFaker::Lorem.paragraphs(rand(5) + 1).join("<br>")
  the_sku = FFaker.bothify('???-######').upcase
  product_attrs = {
    name: the_name,
    price: the_price,
    description: the_description,
    sku: the_sku,
    shipping_category_id: shipping_category.id,
    available_on: available_on,
    product_type_id: product_type.id,
    calculator_id: hotel_calculator.id,
  }
  product = Spree::TravelSample.create_product(product_attrs)

  the_properties.each do |property|
    product_properties_attrs = {
      product_id: product.id,
      property_id: property.id,
      value: 'yes'
    }
    Spree::TravelSample.create_product_properties(product_properties_attrs)
  end
  product.taxons = the_taxons
  generate_variants(product)
end
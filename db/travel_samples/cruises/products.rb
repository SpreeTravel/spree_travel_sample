require "csv"

shipping_category = Spree::ShippingCategory.first
available_on = Time.now - 1.day
cruise_product_type = Spree::ProductType.find_by(name: 'cruise')
cruise_calculator = Spree::TravelCalculator.where(:name => 'Spree::CalculatorCruise').first
product_name = 'Rounding Cuba in 7 days'

Spree::Product.where(name: product_name).destroy_all

if (cruice_product = Spree::Variant.where(sku: 'CRUICE-WORLD')).present?
  cruice_product.delete_all
end

skus = ['Inside Cabin', 'Outside Cabin', 'Balcony Cabin', 'Suite Cabin'].map(&:parameterize)
Spree::Variant.where(sku: skus).delete_all

cabin_option_type = Spree::OptionType.find_by(name: 'cabin_type')

product_attrs = {
    :name => '7 nights around the world',
    :description => Faker::Lorem.paragraphs(rand(5) + 1).join("<br>"),
    :price => 0,
    :sku => 'CRUICE-WORLD',
    :shipping_category_id => shipping_category.id,
    :available_on => available_on,
    :product_type_id => cruise_product_type.id,
    :calculator_id => cruise_calculator.id,
}

cruice_product = Spree::Product.create!(product_attrs)
category_taxonomy = Spree::Taxonomy.find_by_name('Categories')
cruice_product.taxons << Spree::Taxon.where(:taxonomy_id => category_taxonomy.id).where(:name => 'Cruise').first

['Inside Cabin', 'Outside Cabin', 'Balcony Cabin', 'Suite Cabin'].each do |cabin_type|
  ov = Spree::OptionValue.find_or_create_by(option_type: cabin_option_type, presentation: cabin_type, name: cabin_type.parameterize )
  variant_attrs = {
      :product => cruice_product,
      :sku => cabin_type.parameterize,
      :calculator_id => cruise_calculator.id,
      :option_values => [ov],
  }
  Spree::Variant.create!(variant_attrs)
end

def get_cruice_parts(row)
    return nil unless row[0].present?
    hash = {
      :cabin_type     => row[0],
      :start_date     => row[1].to_date,
      :end_date       => row[2].to_date,
      :double         => row[3].to_i,
    }
    hash
end

index = 0
hash = {}
puts File.dirname(__FILE__).to_s + "/cruices.csv"

CSV.foreach(File.dirname(__FILE__) + "/cruices.csv") do |row|
  puts row.inspect
  index += 1
  next if index == 1
  next unless (cruice_data = get_cruice_parts(row)).present?

  rate = Spree::Rate.new
  rate.variant = cruice_product.variants.find_by(sku: cruice_data[:cabin_type].parameterize)
  rate.first_time!
  rate.set_persisted_option_value(:start_date, cruice_data[:start_date])
  rate.set_persisted_option_value(:end_date, cruice_data[:end_date])
  rate.set_persisted_option_value(:double, cruice_data[:double])
  rate.option_values << Spree::RateOptionValue.find_or_create_by(value: 'cruice')
  rate.save!
  puts rate.inspect
end


def get_cruice_parts(row)
    return nil unless row[0].present?
    hash = {
      :cabin_type     => row[0],
      :start_date     => row[1].to_date,
      :end_date       => row[2].to_date,
      :double         => row[3].to_i,
    }
    hash
end


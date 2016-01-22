### Some Global Variables
place_taxonomy = Spree::Taxonomy.find_by_name('Destination')
place_taxons = Spree::Taxon.where(:taxonomy_id => place_taxonomy.id).to_a
place_taxons.shift
category_taxonomy = Spree::Taxonomy.find_by_name('Categories')
category_taxons = Spree::Taxon.where(:taxonomy_id => category_taxonomy.id).where(:name => 'Tour').first.self_and_descendants.to_a
shipping_category = Spree::ShippingCategory.first
properties = Spree::Property.all.to_a
amount_of_fake_products = 5 # HERE
available_on = Time.now - 1.day
product_type = Spree::ProductType.where(:name => 'tour').first
tour_calculator = Spree::TravelCalculator.find_by_name('Spree::CalculatorTour')

### Destroying Products
tours = Spree::Product.where(:product_type => Spree::ProductType.find_by_name('tour')).destroy_all

### Creating Products
amount_of_fake_products.times do
  the_properties = (1..rand(properties.length)).map { properties.sample }.uniq
  the_taxons = [place_taxons.sample, category_taxons.sample]
  the_name = "Tour: " + Faker::Company.name
  the_price = (rand(100) + 20).to_i / 5 * 5
  the_description = Faker::Lorem.paragraphs(rand(5) + 1).join("<br>")
  the_sku = Faker.bothify('???-######').upcase
  product_attrs = {
    :name => the_name,
    :price => the_price,
    :description => the_description,
    :sku => the_sku,
    :shipping_category_id => shipping_category.id,
    :available_on => available_on,
    :product_type_id => product_type.id,
    :calculator_id => tour_calculator.id,
  }
  product = Spree::TravelSample.create_product(product_attrs)

  the_properties.each do |property|
    product_properties_attrs = {
      :product_id => product.id,
      :property_id => property.id,
      :value => 'yes'
    }
    Spree::TravelSample.create_product_properties(product_properties_attrs)
  end
  product.taxons = the_taxons
  product.generate_variants
end


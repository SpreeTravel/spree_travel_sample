properties = {
  'Car Features' => {
    'air-conditioner' => 'Air Conditioner',
    'four-passengers' => 'four-passengers',
    'five-doors' => 'Five Doors',
    'four-bags' => 'Four Bags'
  }
}
puts 'en los properties.....'
properties.keys.each do |type|
  hash = properties[type]
  hash.each do |key, value|
    prop = Spree::TravelSample.create_property({ :name => key, :presentation => value})
  end
end


properties = {
  'Car Features' => {
    'air-conditioner' => 'Air Conditioner',
    'four-passengers' => 'four-passengers',
    'five-doors' => 'Five Doors',
    'four-bags' => 'Four Bags'
  }
}
properties.keys.each do |type|
  pt = Spree::PropertyType.find_by_name(type) rescue nil
  hash = properties[type]
  hash.each do |key, value|
    # TODO: adicionar aqui las property types cuando sean dependencia
    prop = Spree::TravelSample.create_property({ :name => key, :presentation => value })
  end
end


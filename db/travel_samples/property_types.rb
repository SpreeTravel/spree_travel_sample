property_types = [
  {
     name: 'Programs Include',
  },
  {
     name: 'Programs Feature',
  },
  {
     name: 'Tours Include',
  },
  {
     name: 'Tours Feature',
  },
  {
     name: 'Flight Feature',
  },
  {
     name: 'General Services',
  },
  {
     name: 'Hotel Feature',
  },
  {
     name: 'Room Amenity',
  },  
  {
     name: 'Room Feature',
  },  
  {
     name: 'Rent Feature',
  },  
  {
     name: 'Transfer Feature',
  },    
]

property_types.each do |property_type_attrs|
  property_type = Spree::PropertyType.create!(property_type_attrs, :without_protection => true)
  puts property_type.inspect
end

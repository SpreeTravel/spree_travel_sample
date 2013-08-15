option_types = [
  {  
    name: 'adult',
    presentation: 'Adult',
    position: 1  
  },
  {
    name: 'child',
    presentation: 'Child',
    position: 2
  },
  {
    name: 'infant',
    presentation: 'Infant',
    position: 3
  },
  {
    name: 'pax',
    presentation: 'Pax',
    position: 4
  },
  {
    name: 'season',
    presentation: 'Season',
    position: 10	
  },  
  {
    name: 'meal-plan',
    presentation: 'Meal Plan',
    position: 20
  },  
  {
    name: 'trip',
    presentation: 'Trip',
    position: 70
  },  
  {
    name: 'transmission',
    presentation: 'Transmission',
    position: 80
  },  
  {
    name: 'duration',
    presentation: 'Duration',
    position: 90
  },
  {
    name: 'taxi-confort',
    presentation: 'Confort',
    position: 1
  },  
  {
    name: 'type-class',
    presentation: 'Class',
    position: 1
  }
]


option_types.each do |option_type_attrs|
  opt_type = Spree::OptionType.create!(option_type_attrs, :without_protection => true)
  puts opt_type   
end

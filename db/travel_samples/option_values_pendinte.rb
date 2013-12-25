adult 			= Spree::OptionType.find_by_presentation!("Adult")
child 			= Spree::OptionType.find_by_presentation!("Child")
infant	 		= Spree::OptionType.find_by_presentation!("Infant")
pax 			  = Spree::OptionType.find_by_presentation!("Pax")
season 			= Spree::OptionType.find_by_presentation!("Season")
meal_plan 	= Spree::OptionType.find_by_presentation!("Meal Plan")
trip 			  = Spree::OptionType.find_by_presentation!("Trip")
transmission 	= Spree::OptionType.find_by_presentation!("Transmission")
duration 		  = Spree::OptionType.find_by_presentation!("Duration")
taxi_confort 	= Spree::OptionType.find_by_presentation!("Confort")
type_class 		= Spree::OptionType.find_by_presentation!("Class")

 
Spree::OptionValue.create!([
  {
     name: 'adult-0',
     presentation: '0',
     option_type: adult
  },
  {
     name: 'adult-1',
     presentation: '1',
     option_type: adult
  },
  {
     name: 'adult-2',
     presentation: '2',
     option_type: adult
  },
  {
     name: 'adult-3',
     presentation: '3',
     option_type: adult
  },
  {
     name: 'child-0',
     presentation: '0',
     option_type: child
  },
  {
     name: 'child-1',
     presentation: '1',
     option_type: child
  },
  {
     name: 'child-2',
     presentation: '2',
     option_type: child
  },
  {
     name: 'child-3',
     presentation: '3',
     option_type: child
  },   
  {
     name: 'infant-1',
     presentation: '1',
     option_type: infant
  },
  {
     name: 'infant-2',
     presentation: '2',
     option_type: infant
  },
  {
     name: 'infant-3',
     presentation: '3',
     option_type: infant
  },
  {
     name: 'meal-plan-continental_breakfast',
     presentation: 'Continental Breakfast',
     option_type: meal_plan
  },  
  {
     name: 'meal-plan-modified-american-plan',
     presentation: 'Modified American plan',
     option_type: meal_plan
  },
  {
     name: 'meal-plan-american-plan',
     presentation: 'American plan',
     option_type: meal_plan
  },
  {
     name: 'meal-plan-all-inclusive',
     presentation: 'All inclusive',
     option_type: meal_plan
  },
  {
     name: 'pax-1..2',
     presentation: '1-2',
     option_type: pax
  },
  {
     name: 'pax-3..5',
     presentation: '3-5',
     option_type: pax
  },
  {
     name: 'pax-6..8',
     presentation: '6-8',
     option_type: pax
  },
  {
     name: 'pax-9..12',
     presentation: '9-12',
     option_type: pax
  },
  {
     name: 'pax-13..20',
     presentation: '13-20',
     option_type: pax
  },
  {
     name: 'pax-21..30',
     presentation: '21-30',
     option_type: pax
  },
  {
     name: 'pax-31..43',
     presentation: '31-43',
     option_type: pax
  },
  {
     name: 'trip-one-way',
     presentation: 'One way',
     option_type: trip
  },
  {
     name: 'trip-round-trip',
     presentation: 'Roundtrip',
     option_type: trip
  },
  {
     name: 'transmission-automatic',
     presentation: 'Automatic',
     option_type: transmission
  },
  {
     name: 'transmission-manual',
     presentation: 'Manual',
     option_type: transmission
  },
  {
     name: 'taxi-confort-standard',
     presentation: 'Standard',
     option_type: taxi_confort
  },
  {
     name: 'taxi-confort-deluxe',
     presentation: 'Deluxe',
     option_type: taxi_confort
  },
  {
     name: 'class-economic',
     presentation: 'Economic',
     option_type: type_class,
  }  
])



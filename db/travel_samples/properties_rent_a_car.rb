#encoding: utf-8
rent_feature = Spree::PropertyType.find_by_name!("Rent Feature")

properties = [
	{
		presentation: 'Puertas',
		name: 'puertas',
		property_type: rent_feature
	},
	{
		presentation: 'Cantidad de personas',
		name: 'cantidad-de-personas',
		property_type: rent_feature
	},
	{
		presentation: 'Cantidad de maletas',
		name: 'cantidad-de-maletas',
		property_type: rent_feature
	},
	{
		presentation: 'Aire acondicionado',
		name: 'aire-acondicionado',
		property_type: rent_feature
	},
	{
		presentation: 'Combustible',
		name: 'combustible',
		property_type: rent_feature
	},	
]

properties.each do |property_attrs|
  property = Spree::Property.create!(property_attrs, :without_protection => true)
  puts property.inspect
end

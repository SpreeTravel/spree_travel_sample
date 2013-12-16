#encoding: utf-8
flight_feature = Spree::PropertyType.find_by_name!("Flight Feature")

Spree::Property.create!([
	{
		presentation: 'Sale',
		name: 'flight-start-time',
		property_type: flight_feature
	},
	{
		presentation: 'Llega',
		name: 'flight-end-time',
		property_type: flight_feature
	},
	{
		presentation: 'Frecuencia',
		name: 'flight-frecuency',
		property_type: flight_feature
	},
	{
		presentation: 'Escalas',
		name: 'escalas',
		property_type: flight_feature
	},
	{
		presentation: 'Número de Escalas',
		name: 'numero-escalas',
		property_type: flight_feature
	},
	{
		presentation: 'Duración',
		name: 'flight-duration',
		property_type: flight_feature
	},
	{
		presentation: 'Distancia',
		name: 'distance',
		property_type: flight_feature
	},
	{
		presentation: 'Aerolínea',
		name: 'aerolinea',
		property_type: flight_feature
	},
	{
		presentation: 'No. de Vuelo',
		name: 'flight-number',
		property_type: flight_feature
	},
	{
		presentation: 'Aeropuerto de origen',
		name: 'flight-origin-airport',
		property_type: flight_feature
	},
	{
		presentation: 'Aeropuerto de destino',
		name: 'flight-destination-airport',
		property_type: flight_feature
	},
	{
		presentation: 'Acrónimo de origen',
		name: 'flight-origen-acronimus',
		property_type: flight_feature
	},
	{
		presentation: 'Acrónimo de destino',
		name: 'flight-destination-acronimus',
		property_type: flight_feature
	}
])

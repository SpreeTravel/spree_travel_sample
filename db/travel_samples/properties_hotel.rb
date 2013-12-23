#encoding: utf-8
hotel_feature = Spree::PropertyType.find_by_name!("Hotel Feature")
room_amenity = Spree::PropertyType.find_by_name!("Room Amenity")
room_feature = Spree::PropertyType.find_by_name!("Room Feature")

Spree::Property.create!([
  {
		presentation: 'Direccion',
		name: 'direccion',
		property_type: hotel_feature
  },
  {
		presentation: 'Estrellas',
		name: 'estrellas',
		property_type: hotel_feature
  },
	{
		presentation: 'Acceso a internet',
		name: 'acceso-a-internet',
		property_type: hotel_feature
  },
	{	
		presentation: 'Aire acondicionado',
		name: 'aire-acondicionado',
		property_type: hotel_feature
  },
	{	
		presentation: 'Alquiler de motos',
		name: 'alquiler-de-motos',
		property_type: hotel_feature
  },
	{	
		presentation: 'Bar',
		name: 'bar',
		property_type: hotel_feature
  },
	{	
		presentation: 'Bar & Lounge',
		name: 'bar-lounge',
		property_type: hotel_feature
  },
	{	
		presentation: 'Buffet para el desayuno',
		name: 'buffet-para-el-desayuno',
		property_type: hotel_feature
  },
	{	
		presentation: 'Buró de turismo',
		name: 'buro-de-turismo',
		property_type: hotel_feature
  },
	{	
		presentation: 'Cabaret',
		name: 'cabaret',
		property_type: hotel_feature
  },
	{	
		presentation: 'Cafetería',
		name: 'cafeteria',
		property_type: hotel_feature
  },
	{	
		presentation: 'Caja fuerte',
		name: 'caja-fuerte',
		property_type: hotel_feature
  },
	{	
		presentation: 'Cambio de moneda (sólo para huéspedes)',
		name: 'cambio-de-moneda',
		property_type: hotel_feature
  },
	{	
		presentation: 'Campo de golf próximo',
		name: 'campo-de-golf-proximo',
		property_type: hotel_feature
  },
	{	
		presentation: 'Catamarán',
		name: 'catamaran',
		property_type: hotel_feature
  },
	{	
		presentation: 'Catering para eventos',
		name: 'catering-para-eventos',
		property_type: hotel_feature
  },
	{	
		presentation: 'Centro comercial',
		name: 'centro-comercial',
		property_type: hotel_feature
  },
	{	
		presentation: 'Centro de belleza / Peluquería',
		name: 'centro-de-belleza-peluqueria',
		property_type: hotel_feature
  },
	{	
		presentation: 'Centro de negocios',
		name: 'centro-de-negocios',
		property_type: hotel_feature
  },
	{	
		presentation: 'Conserjería',
		name: 'censerjeria',
		property_type: hotel_feature
  },
	{	
		presentation: 'Cuna',
		name: 'cuna',
		property_type: hotel_feature
  },
	{	
		presentation: 'Deportes acuáticos',
		name: 'deportes-acuaticos',
		property_type: hotel_feature
  },
	{	
		presentation: 'Elevadores',
		name: 'elevadores',
		property_type: hotel_feature
  },
	{	
		presentation: 'Equipos audiovisuales',
		name: 'equipos-audiovisuales',
		property_type: hotel_feature
  },
	{	
		presentation: 'Gimnasio',
		name: 'gimnasio',
		property_type: hotel_feature
  },
	{	
		presentation: 'Habitaciones para discapacitados',
		name: 'habitaciones-para-discapacitados',
		property_type: hotel_feature
  },
	{	
		presentation: 'Jardín',
		name: 'jardin',
		property_type: hotel_feature
  },
	{	
		presentation: 'Lavandería',
		name: 'lavanderia',
		property_type: hotel_feature
  },
	{	
		presentation: 'Masaje',
		name: 'masaje',
		property_type: hotel_feature
  },
	{	
		presentation: 'Minibar',
		name: 'minibar',
		property_type: hotel_feature
  },
	{	
		presentation: 'Miniclub (4-7 años)',
		name: 'miniclub-cuatro-siete-anos',
		property_type: hotel_feature
  },
	{	
		presentation: 'Minimercado',
		name: 'minimercado',
		property_type: hotel_feature
  },
	{	
		presentation: 'Oficina de renta de autos',
		name: 'oficina-de-renta-de-autos',
		property_type: hotel_feature
  },
	{	
		presentation: 'Parque infantil',
		name: 'parque-infantil',
		property_type: hotel_feature
  },
	{	
		presentation: 'Parqueo',
		name: 'parqueo',
		property_type: hotel_feature
  },
	{	
		presentation: 'Piscina exterior',
		name: 'piscina-exterior',
		property_type: hotel_feature
  },
	{	
		presentation: 'Plancha y tabla de planchar',
		name: 'plancha-y-tabla-de-planchar',
		property_type: hotel_feature
  },
	{	
		presentation: 'Playa de arena',
		name: 'playa-de-arena',
		property_type: hotel_feature
  },
	{	
		presentation: 'Recepción 24 horas',
		name: 'recepcion-veinticuatro-horas',
		property_type: hotel_feature
  },
	{	
		presentation: 'Restaurante buffet',
		name: 'restaurante-buffet',
		property_type: hotel_feature
  },
	{	
		presentation: 'Restaurantes a la carta',
		name: 'restaurante-a-la-carta',
		property_type: hotel_feature
  },
	{	
		presentation: 'Sala de fitness',
		name: 'sala de fitness',
		property_type: hotel_feature
  },
	{	
		presentation: 'Salones para conferencias',
		name: 'salones-para-conferencias',
		property_type: hotel_feature
  },
	{	
		presentation: 'Sauna',
		name: 'sauna',
		property_type: hotel_feature
  },
	{	
		presentation: 'Secador de pelo',
		name: 'secador-de-pelo',
		property_type: hotel_feature
  },
	{	
		presentation: 'Servicio de habitaciones',
		name: 'servicio-de-habitaciones',
		property_type: hotel_feature
  },
	{	
		presentation: 'Servicio de maleteros',
		name: 'servicio-de-maleteros',
		property_type: hotel_feature
  },
	{	
		presentation: 'Servicio Real',
		name: 'hotel-servicio-real',
		property_type: hotel_feature
  },
	{	
		presentation: 'Servicios médicos',
		name: 'servicios-medicos',
		property_type: hotel_feature
  },
	{	
		presentation: 'Servicios para bodas',
		name: 'servicios-para-bodas',
		property_type: hotel_feature
  },
	{	
		presentation: 'Sombrillas / Hamacas en la playa',
		name: 'sombrillas-hamacas-en-la-playa',
		property_type: hotel_feature
  },
	{	
		presentation: 'Staff multilingüe',
		name: 'staff-multilingue',
		property_type: hotel_feature
  },
	{	
		presentation: 'Taxi',
		name: 'taxi',
		property_type: hotel_feature
  },
	{	
		presentation: 'Televisión satélite',
		name: 'television-satelite',
		property_type: hotel_feature
  },
	{	
		presentation: 'Tienda de regalos',
		name: 'tienda-de-regalos',
		property_type: hotel_feature
  },
	{	
		presentation: 'Toallas de piscina',
		name: 'toallas-de-piscina',
		property_type: hotel_feature
  },
	{	
		presentation: 'Wifi en zonas comunes',
		name: 'wifi-en-zonas-comunes',
		property_type: hotel_feature
  },
	{	
		presentation: 'Voleibol',
		name: 'voleibol',
		property_type: hotel_feature
  },
	{
		presentation: 'Tipo de propiedad',
		name: 'tipo-de-propiedad',
		property_type: room_feature
	},
	{
		presentation: 'Confort',
		name: 'confort',
		property_type: room_feature
	},
	{
		presentation: 'Nivel de servicio',
		name: 'nivel-de-servicio',
		property_type: room_feature
	},
	{
		presentation: 'Ubicación',
		name: 'ubicacion',
		property_type: room_feature
	},
	{
		presentation: 'Vista',
		name: 'vista',
		property_type: room_feature
	},
])

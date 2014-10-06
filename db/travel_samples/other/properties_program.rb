#encoding: utf-8
programs_include = Spree::PropertyType.find_by_name!("Programs Include")

Spree::Property.create!([
	{
		presentation: 'Asistencia de MakeTravel Ltd.',
		name: 'asistencia-de-maketravel',
		property_type: programs_include
	},
	{
		presentation: 'Trámites de importación y exportación de armas',
		name: 'tramites-de-exportacion-importacion-de-armas',
		property_type: programs_include
	},
	{
		presentation: '8 sesiones de caza, incluidas 2 de patos',
		name: 'ocho-sesiones-de-caza-incluidas-2-de-patos',
		property_type: programs_include
	},
	{
		presentation: 'Traslados privados',
		name: 'traslados-privados',
		property_type: programs_include
	},
	{
		presentation: 'Licencia de caza internacional',
		name: 'licencia-de-caza-internacional',
		property_type: programs_include
	},
	{
		presentation: 'Guía especializado',
		name: 'guia-especializado',
		property_type: programs_include
	},
	{
		presentation: 'Custodia de armas en el coto',
		name: 'custodia-de-armas-en-el-coto',
		property_type: programs_include
	},
	{
		presentation: 'Licencia de Pesca',
		name: 'licencia-de-pesca',
		property_type: programs_include
	},
	{
		presentation: '10 sesiones de pesca en Las Salinas',
		name: 'diez-sesiones-de-pesca-en-las-salinas',
		property_type: programs_include
	},
	{
		presentation: '2 sesiones de pesca en el Río Hatiguanico',
		name: 'dos-sesiones-de-pesca-en-rio-hatiguanico',
		property_type: programs_include
	},
	{
		presentation: 'Bote compartido para dos pescadores',
		name: 'bote-compartido-para-dos-pescadores',
		property_type: programs_include
	},
	{
		presentation: '10 sesiones de pesca',
		name: 'diez-sesiones-de-pesca',
		property_type: programs_include
	},
	{
		presentation: 'Refrigerio',
		name: 'refrigerio',
		property_type: programs_include
	},
	{
		presentation: 'Senderismo',
		name: 'senderismo',
		property_type: programs_include
	},
	{
		presentation: 'Alojamiento rural',
		name: 'alojamiento-rural',
		property_type: programs_include
	},
	{
		presentation: 'Paseo en mulo',
		name: 'paseo-en-mulo',
		property_type: programs_include
	},
	{
		presentation: 'Cabalgatas',
		name: 'cabalgatas',
		property_type: programs_include
	},
	{
		presentation: 'Excursiones',
		name: 'excursiones',
		property_type: programs_include
	},
	{
		presentation: '6 inmersiones',
		name: 'seis-inmersiones',
		property_type: programs_include
	},
	{
		presentation: 'Instructor guía',
		name: 'instructor-guia',
		property_type: programs_include
	},
	{
		presentation: 'Circuito colectivo',
		name: 'circuito-colectivo',
		property_type: programs_include
	},
	{
		presentation: 'Salón VIP a la llegada',
		name: 'salon-vip-a-la-llegada',
		property_type: programs_include
	},
	{
		presentation: 'Traslados marítimos a las zonas de buceo',
		name: 'traslados-maritimos-a-las-zonas-de-buceo',
		property_type: programs_include
	},
	{
		presentation: 'Tanques de aire, plomos',
		name: 'tanques-de-aire-plomos',
		property_type: programs_include
	},
	{
		presentation: 'Visita guiada de La Habana',
		name: 'visita-de-guiada-de-la-habana',
		property_type: programs_include
	},
	{
		presentation: '3 Green Fee 18 Hoyos',
		name: 'tres-green-fee-dieciocho-hoyos',
		property_type: programs_include
	},
	{
		presentation: 'Vuelos domésticos',
		name: 'vuelos-domesticos',
		property_type: programs_include
	},
	{
		presentation: 'Todas las visitas mencionadas',
		name: 'todas-las-visitas-mencionadas',
		property_type: programs_include
	},
	{
		presentation: 'Guía especializado en su idioma',
		name: 'guia-especializado-en-su-idioma',
		property_type: programs_include
	},
	{
		presentation: 'Bolsa de palos, carro y bolas',
		name: 'bolsa-de-palos-carros-bolas',
		property_type: programs_include
	},
	{
		presentation: 'Traslados privados y/o colectivos',
		name: 'traslados-privados-colectivos',
		property_type: programs_include
	},
	{
		presentation: 'Alojamiento en Todo Incluido en Varadero',
		name: 'alojamiento-en-todo-incluido-en-varadero',
		property_type: programs_include
	},
	{
		presentation: 'Servicio Real',
		name: 'program-servicio-real',
		property_type: programs_include
	}    
])

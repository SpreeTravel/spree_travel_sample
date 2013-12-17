#encoding: utf-8
destinations = Spree::Taxonomy.find_by_name!("Destinations")
 
taxons = [
 {
  name: 'Destinations',
  taxonomy: destinations,
  permalink: 'destinations',
  position: 0
 },
 {
  name: 'Cuba',
  taxonomy: destinations,
  permalink: 'destinations/cuba',
  position: 1
 },
 {
  name: 'Pinar del Río',
  taxonomy: destinations,
  permalink: 'destinations/cuba/pinar-del-rio',
  position: 1
 },
 {
  name: 'Guanahacabibes y Costa norte',
  taxonomy: destinations,
  permalink: 'destinations/cuba/pinar-del-rio/guanahacabibes-y-costa-norte',
  position: 1
 },
 {
  name: 'Pinar del Río (ciudad)',
  taxonomy: destinations,
  permalink: 'destinations/cuba/pinar-del-rio/pinar-del-rio-ciudad',
  position: 1
 },
 {
  name: 'Viñales y alrededores',
  taxonomy: destinations,
  permalink: 'destinations/cuba/pinar-del-rio/vinales-y-alrededores',
  position: 1
 },
 {
  name: 'Las Terrazas, Soroa, Artemisa',
  taxonomy: destinations,
  permalink: 'destinations/cuba/las-terrazas-soroa-artemisa',
  position: 1
 },
 {
  name: 'La Habana',
  taxonomy: destinations,
  permalink: 'destinations/cuba/la-habana',
  position: 1
 },
 {
  name: 'La Habana Sur',
  taxonomy: destinations,
  permalink: 'destinations/cuba/la-habana/la-habana-sur',
  position: 1
 },
 {
  name: 'El Vedado y Nuevo Vedado',
  taxonomy: destinations,
  permalink: 'destinations/cuba/la-habana/el-vedado-y-nuevo-vedado',
  position: 1
 },
 {
  name: 'La Habana del Este',
  taxonomy: destinations,
  permalink: 'destinations/cuba/la-habana/la-habana-del-este',
  position: 1
 },
 {
  name: 'La Habana Vieja',
  taxonomy: destinations,
  permalink: 'destinations/cuba/la-habana/la-habana-vieja',
  position: 1
 },
 {
  name: 'La Habana Oeste',
  taxonomy: destinations,
  permalink: 'destinations/cuba/la-habana/la-habana-oeste',
  position: 1
 },
 {
  name: 'Mayabeque',
  taxonomy: destinations,
  permalink: 'destinations/cuba/mayabeque',
  position: 1
 },
 {
  name: 'Isla de la Juventud',
  taxonomy: destinations,
  permalink: 'destinations/cuba/isla-de-la-juventud',
  position: 1
 },
 {
  name: 'Cayo Largo del Sur',
  taxonomy: destinations,
  permalink: 'destinations/cuba/cayo-largo-del-sur',
  position: 1
 },
 {
  name: 'Matanzas',
  taxonomy: destinations,
  permalink: 'destinations/cuba/matanzas',
  position: 1
 },
 {
  name: 'Matanzas (ciudad)',
  taxonomy: destinations,
  permalink: 'destinations/cuba/matanzas/matanzas-ciudad',
  position: 1
 },
 {
  name: 'Ciénaga de Zapata',
  taxonomy: destinations,
  permalink: 'destinations/cuba/matanzas/cienaga-de-zapata',
  position: 1
 },
 {
  name: 'Varadero',
  taxonomy: destinations,
  permalink: 'destinations/cuba/matanzas/varadero',
  position: 1 },
 {
  name: 'Villa Clara',
  taxonomy: destinations,
  permalink: 'destinations/cuba/villa-clara',
  position: 1
 },
 {
  name: 'Remedios',
  taxonomy: destinations,
  permalink: 'destinations/cuba/villa-clara/remedios',
  position: 1
 },
 {
  name: 'Santa Clara',
  taxonomy: destinations,
  permalink: 'destinations/cuba/villa-clara/santa-clara',
  position: 1
 },
 {
  name: 'Villa Clara (rural)',
  taxonomy: destinations,
  permalink: 'destinations/cuba/villa-clara/villa-clara-rural',
  position: 1
 },
 {
  name: 'Cayos Jardines del Rey',
  taxonomy: destinations,
  permalink: 'destinations/cuba/cayos-jardines-del-rey',
  position: 1
 },
 {
  name: 'Cayo Santa María, Ensenachos, Las Brujas',
  taxonomy: destinations,
  permalink: 'destinations/cuba/cayos-jardines-del-rey/cayo-santa-maria-ensenachos-las-brujas',
  position: 1
 },
 {
  name: 'Cayo Romano',
  taxonomy: destinations,
  permalink: 'destinations/cuba/cayos-jardines-del-rey/cayo-romano',
  position: 1
 },
 {
  name: 'Cayo Coco',
  taxonomy: destinations,
  permalink: 'destinations/cuba/cayos-jardines-del-rey/cayo-coco',
  position: 1
 },
 {
  name: 'Cayo Guillermo',
  taxonomy: destinations,
  permalink: 'destinations/cuba/cayos-jardines-del-rey/cayo-guillermo',
  position: 1
 },
 {
  name: 'Cienfuegos',
  taxonomy: destinations,
  permalink: 'destinations/cuba/cienfuegos',
  position: 1
 },
 {
  name: 'Cienfuegos (ciudad)',
  taxonomy: destinations,
  permalink: 'destinations/cuba/cienfuegos/cienfuegos-ciudad',
  position: 1
 },
 {
  name: 'Playa Rancho Luna',
  taxonomy: destinations,
  permalink: 'destinations/cuba/cienfuegos/playa-rancho-luna',
  position: 1
 },
 {
  name: 'Sancti Spíritus',
  taxonomy: destinations,
  permalink: 'destinations/cuba/sancti-spiritus',
  position: 1
 },
 {
  name: 'Sancti Spíritus (ciudad)',
  taxonomy: destinations,
  permalink: 'destinations/cuba/sancti-spiritus/sancti-spiritus-ciudad',
  position: 1
 },
 {
  name: 'Sierra del Escambray',
  taxonomy: destinations,
  permalink: 'destinations/cuba/sancti-spiritus/sierra-del-escambray',
  position: 1
 },
 {
  name: 'Trinidad y Ancón',
  taxonomy: destinations,
  permalink: 'destinations/cuba/sancti-spiritus/trinidad-y-ancon',
  position: 1
 },
 {
  name: 'Ciego de Ávila',
  taxonomy: destinations,
  permalink: 'destinations/cuba/ciego-de-avila',
  position: 1
 },
 {
  name: 'Camagüey',
  taxonomy: destinations,
  permalink: 'destinations/cuba/camaguey',
  position: 1
 },
 {
  name: 'Camagüey (ciudad)',
  taxonomy: destinations,
  permalink: 'destinations/cuba/camaguey/camaguey-ciudad',
  position: 1
 },
 {
  name: 'Jardines de la Reina',
  taxonomy: destinations,
  permalink: 'destinations/cuba/camaguey/jardines-de-la-reina',
  position: 1
 },
 {
  name: 'Playa Santa Lucía',
  taxonomy: destinations,
  permalink: 'destinations/cuba/camaguey/playa-santa-lucia',
  position: 1
 },
 {
  name: 'Las Tunas',
  taxonomy: destinations,
  permalink: 'destinations/cuba/las-tunas',
  position: 1
 },
 {
  name: 'Holguín',
  taxonomy: destinations,
  permalink: 'destinations/cuba/holguin',
  position: 1
 },
 {
  name: 'Playas de Holguín',
  taxonomy: destinations,
  permalink: 'destinations/cuba/holguin/playas-de-holguin',
  position: 1
 },
 {
  name: 'Holguín (ciudad)',
  taxonomy: destinations,
  permalink: 'destinations/cuba/holguin/holguin-ciudad',
  position: 1
 },
 {
  name: 'Holguín (rural)',
  taxonomy: destinations,
  permalink: 'destinations/cuba/holguin/holguin-rural',
  position: 1
 },
 {
  name: 'Granma',
  taxonomy: destinations,
  permalink: 'destinations/cuba/granma',
  position: 1
 },
 {
  name: 'Bayamo, Manzanillo, Niquero',
  taxonomy: destinations,
  permalink: 'destinations/cuba/granma/bayamo-manzanillo-niquero',
  position: 1
 },
 {
  name: 'Marea del Portillo',
  taxonomy: destinations,
  permalink: 'destinations/cuba/granma/marea-del-portillo',
  position: 1
 },
 {
  name: 'Santiago de Cuba',
  taxonomy: destinations,
  permalink: 'destinations/cuba/santiago-de-cuba',
  position: 1
 },
 {
  name: 'Baconao',
  taxonomy: destinations,
  permalink: 'destinations/cuba/santiago-de-cuba/baconao',
  position: 1
 },
 {
  name: 'Santiago de Cuba (ciudad)',
  taxonomy: destinations,
  permalink: 'destinations/cuba/santiago-de-cuba/santiago-de-cuba-ciudad',
  position: 1
 },
 {
  name: 'Sierra Maestra',
  taxonomy: destinations,
  permalink: 'destinations/cuba/santiago-de-cuba/sierra-maestra',
  position: 1
 },
 {
  name: 'Guantánamo',
  taxonomy: destinations,
  permalink: 'destinations/cuba/guantanamo',
  position: 1
 },
 {
  name: 'Baracoa',
  taxonomy: destinations,
  permalink: 'destinations/cuba/guantanamo/baracoa',
  position: 1
 },
 {
  name: 'Guantánamo (ciudad)',
  taxonomy: destinations,
  permalink: 'destinations/cuba/guantanamo/guantanamo-ciudad',
  position: 1
 },
]  
  
taxons.each do |taxon_attrs|
  taxon = Spree::Taxon.find_or_create_by_permalink(taxon_attrs[:permalink])
  taxon.taxonomy = taxon_attrs[:taxonomy]
  taxon.name = taxon_attrs[:name]
    
  split_permalink = taxon_attrs[:permalink].split("/")
  parent_permalink ="" 
  
  if split_permalink.length > 1
      parent_permalink += split_permalink[0]
	  for i in 1..split_permalink.length-2
		parent_permalink += "/#{split_permalink[i]}" 		
	  end
	  parent_taxon = Spree::Taxon.find_by_permalink(parent_permalink)
	  taxon.parent = parent_taxon	  
  end
  taxon.save  
  #puts "permalink: #{taxon.permalink} ------and parent_permalink: #{parent_permalink}"
  #puts taxon.inspect
end

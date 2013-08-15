#encoding: utf-8

flight_destinations = Spree::Taxonomy.find_by_name!("Flight Destinations")
 

taxons = [
 {
  name: 'Flight destinations',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations',
  position: 0
 },
 {
  name: 'Cuba',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/cuba',
  position: 1
 },
 {
  name: 'Varadero',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/cuba/varadero',
  position: 2
 },
 {
  name: 'La Habana',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/cuba/la-habana',
  position: 2
 },
 {
  name: 'Holguín',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/cuba/holguin',
  position: 2
 },
 {
  name: 'Cayo Coco',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/cuba/cayo-coco',
  position: 2
 },
 {
  name: 'France',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/france',
  position: 1
 },
 {
  name: 'París',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/france/paris',
  position: 2
 },
 {
  name: 'Beauvais',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/france/beauvais',
  position: 2
 },
 {
  name: 'Spain',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/spain',
  position: 1
 },
 {
  name: 'Madrid',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/spain/madrid',
  position: 2
 },
 {
  name: 'Barcelona',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/spain/barcelona',
  position: 2
 },
 {
  name: 'Mexico',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/mexico',
  position: 1
 },
 {
  name: 'México DF',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/mexico/mexico-df',
  position: 2
 },
 {
  name: 'Cancún',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/mexico/cancun',
  position: 3
 },
 {
  name: 'Dominican Republic',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/dominican-republic',
  position: 1
 },
 {
  name: 'Santo Domingo',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/dominican-republic/santo-domingo',
  position: 2
 },
 {
  name: 'Russian Federation',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/russian-federation',
  position: 1
 },
 {
  name: 'Moscow',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/russian-federation/moscow',
  position: 2
 },
 {
  name: 'Italy',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/italy',
  position: 1
 },
 {
  name: 'Rome',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/italy/rome',
  position: 3
 },
 {
  name: 'Panama',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/panama',
  position: 1
 },
 {
  name: 'Panama City',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/panama/panama-city',
  position: 3
 },
 {
  name: 'Bahamas',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/bahamas',
  position: 3
 },
 {
  name: 'Nassau',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/bahamas/nassau',
  position: 3
 },
 {
  name: 'United States',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/united-states',
  position: 3
 },
 {
  name: 'Atlanta',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/united-states/atlanta',
  position: 3
 },
 {
  name: 'Miami',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/united-states/miami',
  position: 3
 },
 {
  name: 'Canada',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/canada',
  position: 3
 },
 {
  name: 'Montreal',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/canada/montreal',
  position: 3
 },
 {
  name: 'Toronto',
  taxonomy: flight_destinations,
  permalink: 'flight-destinations/canada/toronto',
  position: 3
  }
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
  puts taxon.inspect
end

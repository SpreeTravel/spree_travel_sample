#encoding: utf-8
things_to_do = Spree::Taxonomy.find_by_name!("Things to do")
taxons = [
 {
  name: 'Things to do',
  taxonomy: things_to_do,
  permalink: 'things-to-do',
  position: 0
 },
 {
  name: 'Hoteles',
  taxonomy: things_to_do,
  permalink: 'things-to-do/hotels',
  position: 1
 },
 {
  name: 'Eat out',
  taxonomy: things_to_do,
  permalink: 'things-to-do/eat-out',
  position: 1
 },
 {
  name: 'Drinks',
  taxonomy: things_to_do,
  permalink: 'things-to-do/drinks',
  position: 1
 },
 {
  name: 'Nightlife',
  taxonomy: things_to_do,
  permalink: 'things-to-do/nightlife',
  position: 1
 },
 {
  name: 'Shopping',
  taxonomy: things_to_do,
  permalink: 'things-to-do/shopping',
  position: 1
 },
 {
  name: 'Beaches',
  taxonomy: things_to_do,
  permalink: 'things-to-do/beaches',
  position: 1
 },
 {
  name: 'Interesting places',
  taxonomy: things_to_do,
  permalink: 'things-to-do/interesting-places',
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
  puts taxon.inspect
end

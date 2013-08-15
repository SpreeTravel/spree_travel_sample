#encoding: utf-8

categories = Spree::Taxonomy.find_by_name!("Categories")
 
taxons = [
 {
  name: 'categories',
  taxonomy: categories,
  permalink: 'categories',
  position: 0 
 },
 {
  name: 'Transfers',
  taxonomy: categories,
  permalink: 'categories/transfers',
  position: 16
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

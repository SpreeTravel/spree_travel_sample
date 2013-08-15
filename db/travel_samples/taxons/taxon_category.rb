#encoding: utf-8
categories = Spree::Taxonomy.find_by_name!("Categories")
taxons = [
 {
  name: 'categories',
  taxonomy: categories,
  permalink: 'categories',
  position: 0 
 },
]    
taxons.each do |taxon_attrs|
  taxon = Spree::Taxon.find_or_create_by_permalink(taxon_attrs[:permalink])
  taxon.taxonomy = taxon_attrs[:taxonomy]
  taxon.name = taxon_attrs[:name]
  puts taxon.inspect
end

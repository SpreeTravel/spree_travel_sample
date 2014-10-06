categories = Spree::Taxonomy.find_by_name!("Categories")

taxons = [
  {
    :name => "Categories",
    :taxonomy => categories,
    :position => 0
  },
  {
    :name => "Hotel",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 1
  },
  {
    :name => "City",
    :taxonomy => categories,
    :parent => "Hotel",
    :position => 2
  },
  {
    :name => "Beach",
    :taxonomy => categories,
    :parent => "Hotel",
    :position => 2
  },
  {
    :name => "Natural",
    :taxonomy => categories,
    :parent => "Hotel",
    :position => 2
  },
]

taxons.each do |taxon_attrs|
  if taxon_attrs[:parent]
    taxon_attrs[:parent] = Spree::Taxon.find_by_name!(taxon_attrs[:parent])
    Spree::Taxon.find_or_create_by_name(taxon_attrs)
  end
end

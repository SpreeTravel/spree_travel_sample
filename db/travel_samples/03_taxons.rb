### This is the data
destination = Spree::Taxonomy.find_by_name!("Destination")
category = Spree::Taxonomy.find_by_name!("Category")

taxons = [
  { :name => "Destination", :taxonomy => destination, :position => 1 },
    { :name => "Pinar del Rio", :taxonomy => destination, :position => 1, :parent => 'Destination' },
    { :name => "Artemisa", :taxonomy => destination, :position => 1, :parent => 'Destination' },
    { :name => "La Habana", :taxonomy => destination, :position => 1, :parent => 'Destination' },
    { :name => "Mayabeque", :taxonomy => destination, :position => 1, :parent => 'Destination' },
    { :name => "Isla de la Juventud", :taxonomy => destination, :position => 1, :parent => 'Destination' },
    { :name => "Matanzas", :taxonomy => destination, :position => 1, :parent => 'Destination' },
    { :name => "Villa Clara", :taxonomy => destination, :position => 1, :parent => 'Destination' },
    { :name => "Cienfuegos", :taxonomy => destination, :position => 1, :parent => 'Destination' },
    { :name => "Sancti Spiritus", :taxonomy => destination, :position => 1, :parent => 'Destination' },
    { :name => "Ciego de Avila", :taxonomy => destination, :position => 1, :parent => 'Destination' },
    { :name => "Jardines del Rey", :taxonomy => destination, :position => 1, :parent => 'Destination' },
    { :name => "Camaguey", :taxonomy => destination, :position => 1, :parent => 'Destination' },
    { :name => "Las Tunas", :taxonomy => destination, :position => 1, :parent => 'Destination' },
    { :name => "Holguin", :taxonomy => destination, :position => 1, :parent => 'Destination' },
    { :name => "Granma", :taxonomy => destination, :position => 1, :parent => 'Destination' },
    { :name => "Santiago de Cuba", :taxonomy => destination, :position => 1, :parent => 'Destination' },
    { :name => "Guantanamo", :taxonomy => destination, :position => 1, :parent => 'Destination' },

  { :name => "Category", :taxonomy => category, :position => 1 },
    { :name => "Hotels", :taxonomy => category, :position => 1, :parent => 'Category'},
    { :name => "Flights", :taxonomy => category, :position => 1, :parent => 'Category'},
    { :name => "Car Rental", :taxonomy => category, :position => 1, :parent => 'Category'},
    { :name => "Transfers", :taxonomy => category, :position => 1, :parent => 'Category'},
    { :name => "Tours", :taxonomy => category, :position => 1, :parent => 'Category'},
    { :name => "Package", :taxonomy => category, :position => 1, :parent => 'Category'},
    { :name => "Interesting Destinations", :taxonomy => category, :position => 1, :parent => 'Category'},

]

### Creating Taxons
position = 0
$taxons.each do |taxon_attrs|
  if taxon_attrs[:parent]
    name = taxon_attrs[:name]
    parent_taxon = Spree::Taxon.find_by_name!(taxon_attrs[:parent])
    taxon_attrs[:parent] = parent_taxon
    taxon_attrs[:position] = (position += 1)
    tx = Spree::Taxon.create!(taxon_attrs)
  end
end

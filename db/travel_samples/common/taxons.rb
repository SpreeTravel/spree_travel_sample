# frozen_string_literal: true

taxons = [
  { name: 'Destination', taxonomy: 'Destination' },
  { name: 'Pinar del Rio', taxonomy: 'Destination', parent: 'Destination' },
  { name: 'Artemisa', taxonomy: 'Destination', parent: 'Destination' },
  { name: 'La Habana', taxonomy: 'Destination', parent: 'Destination' },
  { name: 'Mayabeque', taxonomy: 'Destination', parent: 'Destination' },
  { name: 'Isla de la Juventud', taxonomy: 'Destination', parent: 'Destination' },
  { name: 'Matanzas', taxonomy: 'Destination', parent: 'Destination' },
  { name: 'Villa Clara', taxonomy: 'Destination', parent: 'Destination' },
  { name: 'Cienfuegos', taxonomy: 'Destination', parent: 'Destination' },
  { name: 'Sancti Spiritus', taxonomy: 'Destination', parent: 'Destination' },
  { name: 'Ciego de Avila', taxonomy: 'Destination', parent: 'Destination' },
  { name: 'Jardines del Rey', taxonomy: 'Destination', parent: 'Destination' },
  { name: 'Camaguey', taxonomy: 'Destination', parent: 'Destination' },
  { name: 'Las Tunas', taxonomy: 'Destination', parent: 'Destination' },
  { name: 'Holguin', taxonomy: 'Destination', parent: 'Destination' },
  { name: 'Granma', taxonomy: 'Destination', parent: 'Destination' },
  { name: 'Santiago de Cuba', taxonomy: 'Destination', parent: 'Destination' },
  { name: 'Guantanamo', taxonomy: 'Destination', parent: 'Destination' },
  { name: 'Category', taxonomy: 'Category' }
]

taxons.each do |taxon_attrs|
  Spree::TravelSample.create_taxon(taxon_attrs)
end

properties = {
  'Program Include' => {
    'rtavel-assistance' => 'Travel Assistance',
    'weapon-import-export' => 'Procedures for import/export of weapons',
    'private-transfer' => 'Private Transfers',
    'hunting-license' => 'Hunting License',
    'specialized-guide' => 'Specialized Guide',
    'arm-custody' => 'Arm Custody',
    'fishing-license' => 'Fishing License',
    'snack' => 'Snacks',
    'hiking' => 'Hiking',
    'rural-housing' => 'Rural Housing',
    'mule-ride' => 'Mule Ride',
    'Tours' => 'Tours',
    'vip-room' => 'VIP Room',
    'sea-transfers' => 'Sea Transfers',
    'scuba-tank' => 'Scuba Tank',
    'domestic-flight' => 'Domestic Flight',
  },
}

properties.keys.each do |type|
  pt = Spree::PropertyType.find_by_name(type) rescue nil
  hash = properties[type]
  hash.each do |key, value|
    # TODO: adicionar aqui las property types cuando sean dependencia
    prop = Spree::TravelSample.create_property({ :name => key, :presentation => value })
  end
end


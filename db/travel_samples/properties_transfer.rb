#encoding: utf-8
transfer_feature = Spree::PropertyType.find_by_name!("Transfer Feature")

properties = [
	{
		presentation: 'Frecuencia',
		name: 'transfer-frecuency',
		property_type: transfer_feature
	}
]

properties.each do |property_attrs|
  property = Spree::Property.create!(property_attrs, :without_protection => true)
  puts property.inspect
end

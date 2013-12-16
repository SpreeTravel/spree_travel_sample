#encoding: utf-8
transfer_feature = Spree::PropertyType.find_by_name!("Transfer Feature")

Spree::Property.create!([
	{
		presentation: 'Frecuencia',
		name: 'transfer-frecuency',
		property_type: transfer_feature
	}
])

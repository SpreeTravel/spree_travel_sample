products =
  { 
    "Hotel Nacional de Cuba" =>
     {
        'estrellas' => "5",
        'acceso-a-internet'  => "true",
        'aire-acondicionado'  => "true",
        'alquiler-de-motos'  => "true",
        'bar'  => "true",
        'bar-lounge'  => "true",
        'buffet-para-el-desayuno'  => "true",
        'buro-de-turismo'  => "true",
        'cabaret'  => "true",
        'cafeteria'  => "true",
        'caja-fuerte'  => "true",
        'cambio-de-moneda'  => "true",
        'campo-de-golf-proximo'  => "true", 
     },
    "Hotel Occidental Miramar"  =>
     {
        'estrellas' => "5",
        'acceso-a-internet'  => "true",
        'aire-acondicionado'  => "true",
        'alquiler-de-motos'  => "true",
        'bar'  => "true",
        'bar-lounge'  => "true",
        'buffet-para-el-desayuno'  => "true",
        'buro-de-turismo'  => "true",
        'cabaret'  => "true",
        'cafeteria'  => "true",
        'caja-fuerte'  => "true",
        'cambio-de-moneda'  => "true",
        'campo-de-golf-proximo'  => "true", 
      
     },
    "Hotel Melia Habana Libre"  =>
     {
        'estrellas' => "5",
        'acceso-a-internet'  => "true",
        'aire-acondicionado'  => "true",
        'alquiler-de-motos'  => "true",
        'bar'  => "true",
        'bar-lounge'  => "true",
        'buffet-para-el-desayuno'  => "true",
        'buro-de-turismo'  => "true",
        'cabaret'  => "true",
        'cafeteria'  => "true",
        'caja-fuerte'  => "true",
        'cambio-de-moneda'  => "true",
        'campo-de-golf-proximo'  => "true", 
      
     },
    "Hotel Melia Cohiba"  =>
     {
        'estrellas' => "4",
        'acceso-a-internet'  => "true",
        'aire-acondicionado'  => "true",
        'alquiler-de-motos'  => "true",
        'bar'  => "true",
        'bar-lounge'  => "true",
        'buffet-para-el-desayuno'  => "true",
        'buro-de-turismo'  => "true",
        'cabaret'  => "true",
        'cafeteria'  => "true",
        'caja-fuerte'  => "true",
        'cambio-de-moneda'  => "true",
        'campo-de-golf-proximo'  => "true", 
      
     },
    "Hotel Ambos Mundos"  =>
     {
        'estrellas' => "5",
        'acceso-a-internet'  => "true",
        'aire-acondicionado'  => "true",
        'alquiler-de-motos'  => "true",
        'bar'  => "true",
        'bar-lounge'  => "true",
        'buffet-para-el-desayuno'  => "true",
        'buro-de-turismo'  => "true",
        'cabaret'  => "true",
        'cafeteria'  => "true",
        'caja-fuerte'  => "true",
        'cambio-de-moneda'  => "true",
        'campo-de-golf-proximo'  => "true", 
      
     },
    "Hotel Copacabana"  =>
     {
        'estrellas' => "5",
        'acceso-a-internet'  => "true",
        'aire-acondicionado'  => "true",
        'alquiler-de-motos'  => "true",
        'bar'  => "true",
        'bar-lounge'  => "true",
        'buffet-para-el-desayuno'  => "true",
        'buro-de-turismo'  => "true",
        'cabaret'  => "true",
        'cafeteria'  => "true",
        'caja-fuerte'  => "true",
        'cambio-de-moneda'  => "true",
        'campo-de-golf-proximo'  => "true", 
      
     },
    "Hotel Riviera"  =>
     {
        'estrellas' => "5",
        'acceso-a-internet'  => "true",
        'aire-acondicionado'  => "true",
        'alquiler-de-motos'  => "true",
        'bar'  => "true",
        'bar-lounge'  => "true",
        'buffet-para-el-desayuno'  => "true",
        'buro-de-turismo'  => "true",
        'cabaret'  => "true",
        'cafeteria'  => "true",
        'caja-fuerte'  => "true",
        'cambio-de-moneda'  => "true",
        'campo-de-golf-proximo'  => "true", 
      
     },
    "Hotel Telegrafo"  =>
     {
        'estrellas' => "5",
        'acceso-a-internet'  => "true",
        'aire-acondicionado'  => "true",
        'alquiler-de-motos'  => "true",
        'bar'  => "true",
        'bar-lounge'  => "true",
        'buffet-para-el-desayuno'  => "true",
        'buro-de-turismo'  => "true",
        'cabaret'  => "true",
        'cafeteria'  => "true",
        'caja-fuerte'  => "true",
        'cambio-de-moneda'  => "true",
        'campo-de-golf-proximo'  => "true", 
      
     },
  }

products.each do |name, properties|
  product = Spree::ProductHotel.find_by_name(name)
  properties.each do |prop_name, prop_value|
    product.set_property(prop_name, prop_value)
  end
end

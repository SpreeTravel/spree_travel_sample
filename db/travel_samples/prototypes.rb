prototypes = [
  {
    :name => "Hotel",
    :option_types => ["start_date", "end_date", "room", "plan", "adult", "child"]
  }
]

prototypes.each do |prototype_attrs|
  prototype = Spree::Prototype.create!(:name => prototype_attrs[:name])
  prototype_attrs[:option_types].each do |option_types|
    prototype.option_types << Spree::OptionType.find_by_name!(option_types)
  end
end

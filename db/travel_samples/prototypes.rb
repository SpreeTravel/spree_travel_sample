prototypes = [
    {
        :name => "Hotel",
        :option_types => ["start_date", "end_date", "room", "plan", "adult", "child"]
    }
]

prototypes.each do |prototype_attrs|
  next if Spree::Prototype.find_by_name(prototype_attrs[:name])
  prototype = Spree::Prototype.create!(:name => prototype_attrs[:name])
  prototype_attrs[:option_types].each do |ot|
    prototype.option_types << Spree::OptionType.find_by_name!(ot)
  end
end

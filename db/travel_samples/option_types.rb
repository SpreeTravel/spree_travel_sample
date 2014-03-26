option_types = [
  {
    :name => "start_date",
    :presentation => "Start Date",
    :position => 1
  },
  {
    :name => "end_date",
    :presentation => "End Date",
    :position => 2
  },
  {
    :name => "room",
    :presentation => "Room",
    :position => 3
  },
  {
    :name => "plan",
    :presentation => "Plan",
    :position => 4
  },
  {
    :name => "adult",
    :presentation => "Adult",
    :position => 5
  },
  {
    :name => "child",
    :presentation => "Child",
    :position => 6
  }
]

option_types.each do |option_type_attrs|
  Spree::OptionType.find_or_create_by_name(option_type_attrs)
end

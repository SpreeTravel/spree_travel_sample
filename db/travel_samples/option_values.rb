#Spree::Sample.load_sample("option_types")

start_date = Spree::OptionType.find_by_presentation!("Start Date")
end_date = Spree::OptionType.find_by_presentation!("End Date")
room = Spree::OptionType.find_by_presentation!("Room")
plan = Spree::OptionType.find_by_presentation!("Plan")
adult = Spree::OptionType.find_by_presentation!("Adult")
child = Spree::OptionType.find_by_presentation!("Child")

Spree::OptionValue.create!([
  {
    :name => "2014-02-01",
    :presentation => "2014-02-01",
    :position => 1,
    :option_type => start_date
  },
  {
    :name => "2014-04-30",
    :presentation => "2014-04-30",
    :position => 2,
    :option_type => end_date
  },
  {
    :name => "room-master-suite",
    :presentation => "Master Suite",
    :position => 1,
    :option_type => room
  },
  {
    :name => "room-junior-suite",
    :presentation => "Junior Suite",
    :position => 2,
    :option_type => room
  },
  {
    :name => "room-suite",
    :presentation => "Suite",
    :position => 3,
    :option_type => room,
  },
  {
    :name => "room-standart",
    :presentation => "Standart",
    :position => 4,
    :option_type => room,
  },
  {
    :name => "plan-all-inclusive",
    :presentation => "AI",
    :position => 1,
    :option_type => plan
  },
  {
    :name => "plan-american-plan",
    :presentation => "AP",
    :position => 2,
    :option_type => plan
  },
  {
    :name => "plan-modified-american-plan",
    :presentation => "MAP",
    :position => 3,
    :option_type => plan
  },
  {
    :name => "plan-continental-breakfast",
    :presentation => "CP",
    :position => 4,
    :option_type => plan
  },
  {
    :name => "adult-1",
    :presentation => "1",
    :position => 1,
    :option_type => adult
  },
  {
    :name => "adult-2",
    :presentation => "2",
    :position => 2,
    :option_type => adult
  },
  {
    :name => "adult-3",
    :presentation => "3",
    :position => 3,
    :option_type => adult
  },
  {
    :name => "adult-4",
    :presentation => "4",
    :position => 4,
    :option_type => adult
  },
  {
    :name => "child-1",
    :presentation => "1",
    :position => 1,
    :option_type => child
  },
  {
    :name => "child-2",
    :presentation => "2",
    :position => 2,
    :option_type => child
  },
  {
    :name => "child-3",
    :presentation => "3",
    :position => 3,
    :option_type => child
  },
  {
    :name => "child-4",
    :presentation => "4",
    :position => 4,
    :option_type => child
  }      
])

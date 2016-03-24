Day.create([
  {
    name: "Birthday",
    date: DateTime.strptime("7/13/2016 12:00", "%m/%d/%Y %H:%M"), 
    description: "my birthday"
  },
  {
    name: "Christmas",
    date: DateTime.strptime("12/25/2016 12:00", "%m/%d/%Y %H:%M"), 
    description: "Christmas 2016"
  },
  {
    name: "Summer",
    date: DateTime.strptime("6/21/2016 12:00", "%m/%d/%Y %H:%M"), 
    description: "First day of summer!"
  }
  ])

nicole = User.find_by(id: 1)

birthday = Day.find_by(name: "Birthday")
christmas = Day.find_by(name: "Christmas")
summer = Day.find_by(name: "Summer")

nicole.days << birthday
nicole.days << christmas
nicole.days << summer
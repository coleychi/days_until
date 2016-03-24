User.delete_all
Day.delete_all

nicole = User.new(
      first_name: "Nicole",
      last_name: "Chiang",
      username: "nicole",
      email: "nicole@nicole.com",
      password: "nicole13",
      password_confirmation: "nicole13"
  )
  # nicole.skip_confirmation!
nicole.save!

moshi = User.new(
      first_name: "Moshi",
      last_name: "Goshi",
      username: "moshi",
      email: "moshi@moshi.com",
      password: "moshi13",
      password_confirmation: "moshi13"
  )
  # nicole.skip_confirmation!
moshi.save!

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
  },
  {
    name: "End of March",
    date: DateTime.strptime("3/31/2016 12:00", "%m/%d/%Y %H:%M"), 
    description: "March is over"
  },
  {
    name: "Important Day",
    date: DateTime.strptime("6/1/2016 12:00", "%m/%d/%Y %H:%M"), 
    description: "I need to remember to do something this day"
  },
  {
    name: "School begins",
    date: DateTime.strptime("9/5/2016 12:00", "%m/%d/%Y %H:%M"), 
    description: "First day of school"
  }
  ])

birthday = Day.find_by(name: "Birthday")
christmas = Day.find_by(name: "Christmas")
summer = Day.find_by(name: "Summer")
march = Day.find_by(name:"End of March")
important = Day.find_by(name: "Important Day")
school = Day.find_by(name: "School begins")

nicole.days << birthday
nicole.days << christmas
nicole.days << summer
moshi.days << march
moshi.days << important
moshi.days << school
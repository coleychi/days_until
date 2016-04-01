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
      password: "moshimoshi",
      password_confirmation: "moshimoshi"
  )
  # nicole.skip_confirmation!
moshi.save!

Day.create([
  {
    name: "Birthday",
    date: Date.new(2016, 7, 13), 
    description: "my birthday"
  },
  {
    name: "Christmas",
    date: Date.new(2016, 12, 25), 
    description: "Christmas 2016"
  },
  {
    name: "Summer",
    date: Date.new(2016, 6, 21),
    description: "First day of summer!"
  },
  {
    name: "End of April",
    date: Date.new(2016, 4, 30),
    description: "March is over"
  },
  {
    name: "Important Day",
    date: Date.new(2016, 6, 1),
    description: "I need to remember to do something this day"
  },
  {
    name: "School begins",
    date: Date.new(2016, 9, 6), 
    description: "First day of school"
  }
  ])

birthday = Day.find_by(name: "Birthday")
christmas = Day.find_by(name: "Christmas")
summer = Day.find_by(name: "Summer")
april = Day.find_by(name:"End of April")
important = Day.find_by(name: "Important Day")
school = Day.find_by(name: "School begins")

nicole.days << birthday
nicole.days << christmas
nicole.days << summer
moshi.days << april
moshi.days << important
moshi.days << school
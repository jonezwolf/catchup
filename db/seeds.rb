# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning DB"
Booking.destroy_all
Catchupevent.destroy_all
User.destroy_all

puts "Creating two Users"
jonas = User.create!(
  first_name: 'Jonas',
  email: 'jonasjaping@gmail.com',
  password: '123456'
)

juan = User.create!(
  first_name: 'Juan',
  email: 'Juan@gmail.com',
  password: '123456'
)

puts "Creating some Catchup events!"

ux_design = Catchupevent.create!(
  user: jonas,
  name: 'UXdesign',
  location: 'Richmond',
  start_time: DateTime.new(2019,3,1,18,0,0),
  end_time: DateTime.new(2019,3,1,20,0,0),
  capacity: 50,
  category: 'design',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551309805/xpu2bi5mcd0huvhosrj5.jpg'
  )

puts "Created catchup"

think_big = Catchupevent.create!(
  user: jonas,
  name: 'ThinkBig',
  location: 'Southbank',
  start_time: DateTime.new(2019,3,1,17,0,0),
  end_time: DateTime.new(2019,3,1,19,0,0),
  capacity: 30,
  category: 'business',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551309875/tofx3qxgluyrjfhzf0di.png'
  )

puts "Created catchup"

go_entrepreneurs = Catchupevent.create!(
  user: jonas,
  name: 'GoEntrepreneurs',
  location: 'CBD',
  start_time: DateTime.new(2019,2,28,17,0,0),
  end_time: DateTime.new(2019,2,28,19,0,0),
  capacity: 40,
  category: 'entrepreneurship',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551309393/bldz43z6lf1mwjoev2sm.jpg'
  )

puts "Created catchup"

manage_daily = Catchupevent.create!(
  user: jonas,
  name: 'ManageDaily',
  location: 'CBD',
  start_time: DateTime.new(2019,3,1,18,0,0),
  end_time: DateTime.new(2019,3,1,20,0,0),
  capacity: 40,
  category: 'business',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551309955/vtbmtcf4ojmndvyjia0z.jpg'
  )

puts "Created catchup"

spiritual_mind = Catchupevent.create!(
  user: jonas,
  name: 'SpiritualMind',
  location: 'Richmond',
  start_time: DateTime.new(2019,2,28,16,0,0),
  end_time: DateTime.new(2019,2,28,19,0,0),
  capacity: 40,
  category: 'meditation',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551309729/qla9umh0vgccnhwj1pjr.jpg'
  )

puts "Creating two bookings"
test_booking = Booking.create!(
  number_of_guests: 2,
  user: jonas,
  catchupevent: spiritual_mind
  )

test_booking2 = Booking.create!(
  number_of_guests: 4,
  user: juan,
  catchupevent: manage_daily
  )

puts "Created catchup"

puts "finished"

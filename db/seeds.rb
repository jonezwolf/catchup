# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

test_booking = Booking.create(
  number_of_guests: 2,
  user_id: 1,
  catchupevent_id: 1
  )

test_booking2 = Booking.create(
  number_of_guests: 4,
  user_id: 2,
  catchupevent_id: 2
  )

Jonas = User.create(
  first_name: 'Jonas',
  email: 'jonasjaping@gmail.com',
  password: '123456'
  photo: 'jonas.jpg'
)

Juan = User.create(
  first_name: 'Juan',
  email: 'Juan@gmail.com',
  password: '123456'
)

UXdesign = Catchupevent.create(
  user_id: 1,
  name: 'UXdesign',
  location: 'Richmond',
  start_time: DateTime.new(2019,2,27,18,0,0),
  end_time: DateTime.new(2019,2,27,20,0,0),
  capacity: 50,
  category: 'design',
  photo: 'uxphoto.jpg'
  )

ThinkBig = Catchupevent.create(
  user_id: 1,
  name: 'ThinkBig',
  location: 'Southbank',
  start_time: DateTime.new(2019,3,1,17,0,0),
  end_time: DateTime.new(2019,3,1,19,0,0),
  capacity: 30,
  category: 'business',
  photo: 'thinkbig.png'
  )

GoEntrepreneurs = Catchupevent.create(
  user_id: 1,
  name: 'GoEntrepreneurs',
  location: 'CBD',
  start_time: DateTime.new(2019,2,28,17,0,0),
  end_time: DateTime.new(2019,2,28,19,0,0),
  capacity: 40,
  category: 'entrepreneurship',
  photo: 'startup.png'
  )

ManageDaily = Catchupevent.create(
  user_id: 1,
  name: 'ManageDaily',
  location: 'CBD',
  start_time: DateTime.new(2019,3,1,18,0,0),
  end_time: DateTime.new(2019,3,1,20,0,0),
  capacity: 40,
  category: 'business',
  photo: 'Daily-Management-PDCA.jpg'
  )

SpiritualMind = Catchupevent.create(
  user_id: 1,
  name: 'SpiritualMind',
  location: 'Richmond',
  start_time: DateTime.new(2019,2,28,16,0,0),
  end_time: DateTime.new(2019,2,28,19,0,0),
  capacity: 40,
  category: 'meditation',
  photo: 'mindbodyspirit.jpg'
  )

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

Jonas = User.create(
  first_name: 'Jonas',
  email: 'jonasjaping@gmail.com',
  password: '123456'
)

UXdesign = Catchupevent.create(
  user_id: 1,
  name: 'uxdesign',
  location: 'Richmond',
  start_time: DateTime.new(2019,2,27,18,0,0),
  end_time: DateTime.new(2019,2,27,20,0,0),
  capacity: 50,
  category: 'design'
  )

ThinkBig = Catchupevent.create(
  user_id: 1,
  name: 'thinkbig',
  location: 'Southbank',
  start_time: DateTime.new(2019,3,1,17,0,0),
  end_time: DateTime.new(2019,3,1,19,0,0),
  capacity: 30,
  category: 'business'
  )

GoEntrepreneurs = Catchupevent.create(
  user_id: 1,
  name: 'goentrepreneurs',
  location: 'CBD',
  start_time: DateTime.new(2019,2,28,17,0,0),
  end_time: DateTime.new(2019,2,28,19,0,0),
  capacity: 40,
  category: 'entrepreneurship'
  )

ManageDaily = Catchupevent.create(
  user_id: 1,
  name: 'managedaily',
  location: 'CBD',
  start_time: DateTime.new(2019,3,1,18,0,0),
  end_time: DateTime.new(2019,3,1,20,0,0),
  capacity: 40,
  category: 'business'
  )

SpiritualMind = Catchupevent.create(
  user_id: 1,
  name: 'spiritualmind',
  location: 'Richmond',
  start_time: DateTime.new(2019,2,28,16,0,0),
  end_time: DateTime.new(2019,2,28,19,0,0),
  capacity: 40,
  category: 'meditation'
  )

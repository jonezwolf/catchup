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
  location: 'Richmond Victoria Australia',
  start_time: DateTime.new(2019,3,1,18,0,0),
  end_time: DateTime.new(2019,3,1,20,0,0),
  capacity: 50,
  category: 'design',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551414217/uxdesign.jpg',
  description: "Many of our members are looking to move into UX from all sorts of different professions. In this session we will hear stories from about journeys into (or towards) a career in UX. If you would like to share your story, or know anyone else that might, please send the organiser a message."
  )

puts "Created catchup #{Catchupevent.all.length}"

spiritual_mind = Catchupevent.create!(
  user: jonas,
  name: 'SpiritualMind',
  location: '41 Stewart Street Richmond Melbourne',
  start_time: DateTime.new(2019,2,28,16,0,0),
  end_time: DateTime.new(2019,2,28,19,0,0),
  capacity: 40,
  category: 'meditation',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551413007/spiritual_mind.jpg',
  description: 'This is a group for anyone interested in the PRACTICAL APPLICATIONS of various Mind, Body and Spirit topics. I believe we are all on a journey of personal and spiritual growth in all areas of our lives, and this group caters for people who would like to evolve in the areas of mind, body and spirit.'
  )

puts "Created catchup #{Catchupevent.all.length}"

go_entrepreneurs = Catchupevent.create!(
  user: jonas,
  name: 'GoEntrepreneurs',
  location: 'CBD Melbourne',
  start_time: DateTime.new(2019,2,28,17,0,0),
  end_time: DateTime.new(2019,2,28,19,0,0),
  capacity: 40,
  category: 'entrepreneurship',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551415219/work.jpg',
  description: 'For people working in startups, lean (startup) coffee is a weekly 1-hour coffee that runs a mash-up of leancoffee.org with theleanstartup.com.'
  )

puts "Created catchup #{Catchupevent.all.length}"

manage_daily = Catchupevent.create!(
  user: jonas,
  name: 'ManageDaily',
  location: 'CBD Melbourne',
  start_time: DateTime.new(2019,3,1,18,0,0),
  end_time: DateTime.new(2019,3,1,20,0,0),
  capacity: 40,
  category: 'business',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551413020/manage_daily.jpg',
  description: "This is Melbourne's longest running and largest group of its type. Come to our meetings and develop your understanding of Management."
  )

puts "Created catchup #{Catchupevent.all.length}"

think_big = Catchupevent.create!(
  user: jonas,
  name: 'ThinkBig',
  location: 'Southbank Victoria Australia',
  start_time: DateTime.new(2019,3,1,17,0,0),
  end_time: DateTime.new(2019,3,1,19,0,0),
  capacity: 30,
  category: 'business',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551309875/tofx3qxgluyrjfhzf0di.png',
  description: 'Thinking Big is a supportive group consisting of very driven and successful individuals who like to Think Big.'
  )

puts "Created catchup #{Catchupevent.all.length}"

virtual_master = Catchupevent.create!(
  user: jonas,
  name: 'VirtualMaster',
  location: '70 Dorcas St Melbourne',
  start_time: DateTime.new(2019,3,16,16,0,0),
  end_time: DateTime.new(2019,3,16,21,0,0),
  capacity: 30,
  category: 'technology',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551413022/virtual_master.jpg',
  description: 'Augmented Reality is poised to innovate the way people engage with businesses, products, and entertainment. Leading innovators in the technology, like Magic Leap, Google, Microsoft and Apple, have set the precedent for the future of AR through investments and strategic moves. Imagine the world that we live in with all the information delivered to you visually, how you want it, the way you want it when you want it. In our one – day Launch into AR Bootcamp, you’ll learn the foundation of Augmented Reality Design and be able to build your very own AR prototype.'
  )

puts "Created catchup #{Catchupevent.all.length}"

master_mind = Catchupevent.create!(
  user: jonas,
  name: 'MasterMind',
  location: '334 Swanston St Melbourne',
  start_time: DateTime.new(2019,3,14,10,0,0),
  end_time: DateTime.new(2019,3,14,12,0,0),
  capacity: 15,
  category: 'business',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551401222/Mastermind.jpg',
  description: 'Start with chatting amongst ourselves to get to know what we do and what we are actively doing to get out of the rat race in real life, Then at 2:30 pm we meet at the table and play the game together.'
  )

puts "Created catchup #{Catchupevent.all.length}"

tech_design = Catchupevent.create!(
  user: jonas,
  name: 'Tech Design',
  location: 'State Library Melbourne',
  start_time: DateTime.new(2019,3,14,14,0,0),
  end_time: DateTime.new(2019,3,14,18,0,0),
  capacity: 15,
  category: 'technology',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551401222/Tech_Design.jpg',
  description: 'Learn the basics of technology design with us. In this workshop our topics will be tech architecture and agile improvement design. Dive into your first techn endeavor! '
  )

puts "Created catchup #{Catchupevent.all.length}"

coding_workshop = Catchupevent.create!(
  user: jonas,
  name: 'Advanced Coding Workshop',
  location: 'RMIT University Melbourne',
  start_time: DateTime.new(2019,3,10,8,0,0),
  end_time: DateTime.new(2019,3,10,18,0,0),
  capacity: 15,
  category: 'technology',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551401222/Advanced_Coding_Workshop.jpg',
  description: 'You have heard of coding, but it looks kind of complex, and you do not know where to begin. Or perhaps you have been game enough to try, you have downloaded an editor, wrote a few lines, but you are a bit confused. Maybe you are already well on your way, and just want to spend time in a happy community of developers (and want to share your passionate distaste of Internet explorer). Whatever your level, this is the place for you...'
  )

puts "Created catchup #{Catchupevent.all.length}"

wakeboard = Catchupevent.create!(
  user: jonas,
  name: 'Wakeboarding basics',
  location: 'Melbourne Australia',
  start_time: DateTime.new(2019,3,05,10,0,0),
  end_time: DateTime.new(2019,3,05,14,0,0),
  capacity: 15,
  category: 'sports',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551401223/Wakeboarding_basics.jpg',
  description: 'Wakeboarding is a towed surface water sport or leisure activity where a participant is towed on a small board behind a motorboat over a body of water. The participant rides wake produced by the towing boat, and attempts to do tricks.'
  )

puts "Created catchup #{Catchupevent.all.length}"

fix_things = Catchupevent.create!(
  user: jonas,
  name: 'How to fix things',
  location: 'Isartor Munich',
  start_time: DateTime.new(2019,3,20,14,0,0),
  end_time: DateTime.new(2019,3,20,15,0,0),
  capacity: 50,
  category: 'technology',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551401222/How_to_fix_things.jpg',
  description: 'We are going to show you how to use tools to fix things. Have you ever wondered how not to pay a technician to fix stuff at home? Come to our meetup and take the first step towards independence at home!'
  )

puts "Created catchup #{Catchupevent.all.length}"

car_workshop = Catchupevent.create!(
  user: jonas,
  name: 'How to repair your car',
  location: 'Federation Square Melbourne',
  start_time: DateTime.new(2019,3,28,10,0,0),
  end_time: DateTime.new(2019,3,28,19,0,0),
  capacity: 5,
  category: 'technology',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551401221/How_to_repair_your_car.jpg',
  description: 'Have you ever wondered how to fix small things on your own car? This is the time to learn about repairing stuff when the lights are on. Change oil, repair breaks, put in a new light bulb - we know how to do it. At the end of this workshop, you will know, too!'
  )

puts "Created catchup #{Catchupevent.all.length}"

bulli_love = Catchupevent.create!(
  user: jonas,
  name: 'Spread the love',
  location: 'Yarra River Melbourne',
  start_time: DateTime.new(2019,3,5,10,0,0),
  end_time: DateTime.new(2019,3,5,19,0,0),
  capacity: 500,
  category: 'music',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551413293/spread_love.jpg',
  description: 'Join us for the first Spread the love of the winter season. As every year, the entry is free. We have rented a big boat to go down Yarra River and are willing to put in everything to throw a crazy party that you and your friends will never ever forget!'
  )

puts "Created catchup #{Catchupevent.all.length}"

dance_festival = Catchupevent.create!(
  user: jonas,
  name: 'Sunny basses',
  location: 'Botanical Gardens Melbourne',
  start_time: DateTime.new(2019,3,31,10,0,0),
  end_time: DateTime.new(2019,3,31,19,0,0),
  capacity: 150,
  category: 'music',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551414338/dj.jpg',
  description: 'It is the end of summer. Let us invite one last time to our dance party and celebrate a last Picnic Electronic together in the botanical gardens. You can be escited for a special international DJ guest to join our party. It will be awesome. The price is only 20$, 35$ if you buy two tickets. We love you.'
  )

puts "Created catchup #{Catchupevent.all.length}"

craft_festival = Catchupevent.create!(
  user: jonas,
  name: 'Craftsmanship Festival',
  location: 'St Kilda Melbourne',
  start_time: DateTime.new(2019,3,05,8,0,0),
  end_time: DateTime.new(2019,3,05,14,0,0),
  capacity: 150,
  category: 'music',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551413463/craftmenship.jpg',
  description: 'Come together to have a good time and find out about the latest trends in craftsmanship on this festival. We are here to show you the real deal. You can be a strong person. Just feel free to join our community on this beautiful day and challenge yourself to widen your horizon towards the unexpected.'
  )

puts "Created catchup #{Catchupevent.all.length}"

music_festival = Catchupevent.create!(
  user: jonas,
  name: 'Music Festival St Kilda',
  location: 'St Kilda Beach Melbourne',
  start_time: DateTime.new(2019,3,04,8,0,0),
  end_time: DateTime.new(2019,3,04,22,0,0),
  capacity: 400,
  category: 'music',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551401222/Music_Festival_St_Kilda.jpg',
  description: 'This is the last festival of the season. We are extremely happy we could secure Angus & Julia Stone for this. Be on time as there is no entry fee but we are expecting a lot of people for this. We do this every year and when the weather is good it can be a lot of fun. We have food trucks so that you will not be starving.'
  )

puts "Created catchup #{Catchupevent.all.length}"

photo_workshop = Catchupevent.create!(
  user: jonas,
  name: 'Learn to photograph',
  location: 'CBD Melbourne',
  start_time: DateTime.new(2019,3,02,10,0,0),
  end_time: DateTime.new(2019,3,02,14,0,0),
  capacity: 10,
  category: 'technology',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551401222/Learn_to_photograph.jpg',
  description: 'Take your sketch notes from dreary to delightful, in our hands-on sketchnoting workshop. In this workshop, you will learn about the practice of sketchnoting and how it is one of the most invaluable tools in your toolbox. Studies have shown that people who create simple and quick drawings have higher retention levels than people who simply write down their thoughts on paper. Visual note-taking blends the two approaches by using a combination of words and sketches. These visuals enable the note-taker to listen, digest, capture, and share the essence of what is being said.'
  )

puts "Created catchup #{Catchupevent.all.length}"

leadership = Catchupevent.create!(
  user: jonas,
  name: 'Be a leader',
  location: 'Manhattan New York',
  start_time: DateTime.new(2019,3,16,10,0,0),
  end_time: DateTime.new(2019,3,16,14,0,0),
  capacity: 40,
  category: 'business',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551401222/Be_a_leader.jpg',
  description: 'Come along to our first meetup of 2019 in Melbourne! Thinking of starting a business? Growing your start-up and looking for peer support? Or maybe you just want to find out where the opportunities are in your city? Join us!**This month we will be joined by Laura Roodhouse, Founder of Eight Elements, who will be sharing her startup story in our Fireside Chat**'
  )

puts "Created catchup #{Catchupevent.all.length}"

women = Catchupevent.create!(
  user: jonas,
  name: 'Women in Tech',
  location: 'Stewart St 41',
  start_time: DateTime.new(2019,3,10,10,0,0),
  end_time: DateTime.new(2019,3,10,14,0,0),
  capacity: 25,
  category: 'technology',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551413597/women_tech.jpg',
  description: 'Join us for a special Google Cloud Melbourne meetup to celebrate International Womens Day 2019! Doors open for drinks at 17:30, and talks will kickoff at 18:00. There will also be pizza, and when the talks finish up there will be more time for drinks and networking. Look forward to seeing you then.'
  )

puts "Created catchup #{Catchupevent.all.length}"

learn_code = Catchupevent.create!(
  user: jonas,
  name: 'Learn to code',
  location: 'Federation Square Melbourne',
  start_time: DateTime.new(2019,3,20,10,0,0),
  end_time: DateTime.new(2019,3,20,15,0,0),
  capacity: 10,
  category: 'technology',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1551401222/Learn_to_code.jpg',
  description: 'In this focus group workshop you can learn to write your first HTML and design cool websites with us. Take your first step towards coding now with us. It is really simple. We love to teach!'
  )

puts "Created #{Catchupevent.all.length} catchups!"

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

puts "finished"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Photo.destroy_all
Home.destroy_all
Offer.destroy_all
Homewatch.destroy_all

puts "Seeding users..."
u1 = User.create(username:"caitlinhouse", email: 'Caitlin@gmail.com', password: "1234")
u2 = User.create(username:"dreamfront", email: 'lizzie@yahoo.com', password:"ilovechicken")
u3 = User.create(username:"hopes", email: 'Tom@hotmail.com', password:"dragonslayer")
u4 = User.create(username: "immorganyeet", email: 'Morgan@gmail.com',password:"master")
u5 = User.create(username:"dannydevito", email: 'Danny@gmail.com', password:"420")
u6 = User.create(username: "familyhome", email: 'Peter@gmail.com', password:"sub")
u7 = User.create(username: "bynes", email: 'amanda@gmail.com', password:"hello")
u8 = User.create(username:"jonasbrother", email: 'nick@gmail.com', password:"morgan")


puts "Seeding homes..."
h1 = Home.create( address: "594 S Mapleton Dr, Los Angeles, CA 90024", price:150000000, bio:"Modern vacation home that invites family and friends together", user:u1)
h2 = Home.create( address: "2571 Wallingford Dr, Beverly Hills, CA 90210", price:850000, bio:"Quiet suburban home with much greenery and neat walkway", user:u2)
h3 = Home.create( address: "7265 N 40th St, Paradise Valley, AZ 85253", price:6000000, bio:"Suburban mansion that encapsulates the wealth and view of Paradise Valley", user:u3)
h4 = Home.create( address: "1820 West Lawn Ave, Madison, WI 53711", price:850000, bio:"Beach front house in Wisconsin with breathtaking views and clean air ", user:u4)
h5 = Home.create( address: "679 County Road 1465, Bonham, TX 75418", price:700000, bio:"Exquisite breathtaking architecture with sharp personality ", user:u5)
h6 = Home.create( address: "824 Mountain Ave, Wyckoff, NJ 07481", price:900000, bio:"Small Secluded house with modern design in a rural environment  ", user:u6)
h7 = Home.create( address: "679 County Road 1465, Bonham, TX 75418", price:700000, bio:"Fantastic interior design", user:u7)
h8 = Home.create( address: "7265 N 40th St, Paradise Valley, AZ 85253", price:600000, bio:"Suburban mansion that encapsulates the wealth and view of Paradise Valley", user:u8)


puts "Seeding photos..."
p1 = Photo.create(image_url: 'https://wp-tid.zillowstatic.com/bedrock/app/uploads/sites/31/shutterstock_112472870-682b30-0b84e5.jpg', description: "Outdoor House View", home:h1)
p2 = Photo.create(image_url: 'https://photos.zillowstatic.com/fp/90a44ca13f7923057b405bf9368595e3-cc_ft_1536.webp', description: "Southern Design", home:h2)
p3 = Photo.create(image_url: 'https://photos.zillowstatic.com/fp/90a44ca13f7923057b405bf9368595e3-cc_ft_1536.webp', description: "Modern Living", home:h3)
p4 = Photo.create(image_url: 'https://photos.zillowstatic.com/fp/126f1b1c6eb30652701e77dd88f42e44-uncropped_scaled_within_1536_1152.webp', description: "Breathtaking Views", home:h4)
p5 = Photo.create(image_url: 'https://photos.zillowstatic.com/fp/30fade5563ba4103958f4878a3308df0-uncropped_scaled_within_1536_1152.webp', description:  "Southern Escape", home:h5)
p6 = Photo.create(image_url: 'https://photos.zillowstatic.com/fp/e81e795e66ad59454d798340a538c3ab-uncropped_scaled_within_1536_1152.webp', description:  "Quiet City Front",home:h6)
p7 = Photo.create(image_url: 'https://photos.zillowstatic.com/fp/0db72555ed567b919659248788e6f7c2-uncropped_scaled_within_1536_1152.webp', description:  "Closed Off Terrace", home:h7)
p8 = Photo.create(image_url: 'https://photos.zillowstatic.com/fp/c88a83e28265f043bd586b875fb23397-uncropped_scaled_within_1536_1152.webp', description: "Wooden Bliss", home:h8)


puts "Seeding offers..."
o1 = Offer.create(user: u4, home: h4, amount: 200000)
o2 = Offer.create(user: u2, home: h3, amount: 200000)
o3 = Offer.create(user: u5, home: h1, amount: 500000)
o4 = Offer.create(user: u8, home: h4, amount: 400000)
o5 = Offer.create(user: u7, home: h5, amount: 25000000)
o6 = Offer.create(user: u6, home: h6, amount: 3000000)
o7 = Offer.create(user: u3, home: h7, amount: 100000)
o8 = Offer.create(user: u1, home: h1, amount: 7000000)



puts "✅ Done seeding!"
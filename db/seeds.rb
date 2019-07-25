# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bar.create(name: "Dubliner", location:"stone street")
User.create(username: "Stephen", password: "coolguy42069", email: "breh@gmail.com", image: "chicken")

Review.create(rating: 7, comment: "Good outdoor seating area, but the service is buns", user_id: 1, bar_id: 1)
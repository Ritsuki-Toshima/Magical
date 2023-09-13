# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Cleaning the database
puts "Clearing DB"

#Destroying the database
User.destroy_all
Feed.destroy_all
Favorite.destroy_all
Voice.destroy_all

# Creating the database
puts "Creating DB"

# Creating the users
puts "----------------------------------------------"
puts "Creating Users"
ritsuki = User.new(
  email: "ricky0912t@gmail.com",
  password: "123456",
  nationality: "Japan"
)
ritsuki.save!

mike = User.new(
  email: "hand0912@gmail.com",
  password: "123456",
  nationality: "U.S.A"
)
mike.save!

7.times do
  ritsuki_feed = Feed.new(
    content_negative: "negative",
    content_positive: "positive",
    like: rand(1..10),
    comment: "nice",
    user_id: ritsuki.id
  )
  ritsuki_feed.save!
end

7.times do
  ritsuki_voice = Voice.new(
    script: "Be positive!",
    accept: true,
    user_id: ritsuki.id
  )
  ritsuki_voice.save!
end

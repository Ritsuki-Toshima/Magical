# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Cleaning the database

puts "Clearing DB"

# Destroying the database
User.destroy_all
Feed.destroy_all
Favorite.destroy_all
Voice.destroy_all

# Creating the database
puts "Creating DB"

# Creating the users (elderly)
puts "----------------------------------------------"
puts "Creating Users"

# users
ritsuki = User.new(
  email: "ricky0912t@gmail.com",
  password: "123456",
  username: "ritsuki",
  nationality: "Japan"
)
ritsuki.save!

mike = User.new(
  email: "hand0912r@gmail.com",
  password: "123456",
  username: "mike",
  nationality: "Canada"
)
mike.save!

# feeds
ritsuki_1_feed = Feed.new(
  content_positive: "yes",
  content_negative: "no",
  like: rand(0..20),
  user_id: ritsuki.id
)
ritsuki_1_feed.save!

# voices
ritsuki_1_voice = Voice.new(
  script: "頑張れ！！",
  accept: true,
  user_id: ritsuki.id
)
ritsuki_1_voice.save!

ritsuki_2_voice = Voice.new(
  script: "君ならできる！！",
  accept: true,
  user_id: ritsuki.id
)
ritsuki_2_voice.save!

mike_1_voice = Voice.new(
  script: "You can do it",
  accept: true,
  user_id: mike.id
)
mike_1_voice.save!

mike_2_voice = Voice.new(
  script: "You are my Sunshine!!",
  accept: true,
  user_id: mike.id
)
mike_2_voice.save!

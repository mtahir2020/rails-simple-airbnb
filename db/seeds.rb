# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

price = rand(30..90)

puts "Cleaning database"
Flat.destroy_all

puts "generating flats"



4.times do
  flat = Flat.create!(name: Faker::Artist.name,
    address: Faker::Address.street_address,
    description: Faker::House.room,
    price_per_night: rand(30..90),
    number_of_guests: rand(1..5))
  puts "Created #{flat.name}"
end

puts "finished!"

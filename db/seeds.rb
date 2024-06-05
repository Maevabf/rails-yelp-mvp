# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
chinese = {name: "Chinese", address: "7 Boundary St, London E2 7JE", category:"chinese"}
italian = {name: "Italian", address: "6 Boundary St, London B6 23E", category:"italian"}
japanese = {name: "Japanese", address: "6 Street St, Brow A6 23E", category:"japanese"}
france = {name: "France", address: "18 Haxo, Brown F6 08E", category:"french"}
belgian = {name: "Belgian ", address: "21 blood St, Barritz 78 1AE", category:"belgian"}

[chinese, italian, japanese, france, belgian].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

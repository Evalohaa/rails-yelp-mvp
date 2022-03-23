# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "06 28 90 06 44", category: "belgian" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "01 61 12 45 67", category: "japanese" }
petit_bambou = { name: "Petit Bambou", address: "447 allé des mimosas, 06210 mandelieu", phone_number: "06 60 54 27 60", category: "italian" }
ile_glaces = { name: "Ile aux glaces", address: "500 allé des fleurs, 06210 mandelieu", phone_number: "06 60 54 27 60", category: "chinese" }
art_y_show = { name: "Art I Show", address: "667 allé de la réunion, 07900 la réunion", phone_number: "09 60 54 27 60", category: "french" }

[dishoom, pizza_east, petit_bambou, ile_glaces, art_y_show].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

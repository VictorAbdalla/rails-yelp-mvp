# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "99999-0000", category: "french" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number:"99999-0001", category: "italian" }
haru = { name: "Haru", address: "R. Raimundo Corrêa, 10 - Copacabana, Rio de Janeiro", phone_number:"96732-2668", category: "japanese" }
braz = { name: "Braz", address: "R. Maria Angélica, 129 - Jardim Botânico, Rio de Janeiro", phone_number:"2535-0687", category: "italian" }
ct_boucherie = { name: "CT Boucherie", address: "Rua Dias Ferreira, 636 - Leblon, Rio de Janeiro", phone_number:"2529-2329", category: "french" }

[dishoom, pizza_east, haru, braz, ct_boucherie].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"

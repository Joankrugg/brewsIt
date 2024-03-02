# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#Yeast.create({name: 'Lager'})
#Yeast.create({name: 'Ale'})
#Yeast.create({name: 'Spontanée'})
#Yeast.create({name: 'Hybride'})

Color.create({name: 'Blanche'})
Color.create({name: 'Blonde'})
Color.create({name: 'Ambrée'})
Color.create({name: 'Ruby'})
Color.create({name: 'Brune'})
Color.create({name: 'Noire'})

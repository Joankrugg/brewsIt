#require "csv"
#require "open-uri"


#CSV.foreach(Rails.root.join('db', 'seeds', 'hauts_france.csv'), headers: true) do |row|
#  begin
#    spot = Spot.new
#    spot.name = row['name']
#    spot.type= Type.find(row['type_id'])
#    spot.city = row['city']
#    spot.active = row['active']


    # Attribuer l'image à la bière

#    spot.save!
#    puts "Modèle créé : #{spot.name}"

#  rescue => e
#    puts "Erreur lors de la création du modèle pour #{row['name']}: #{e.message}"
#    next # Passe à la ligne suivante
#  end
#end





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

#Color.create({name: 'Blanche'})
#Color.create({name: 'Blonde'})
#Color.create({name: 'Ambrée'})
#Color.create({name: 'Ruby'})
#Color.create({name: 'Brune'})
#Color.create({name: 'Noire'})

Style.create({name: 'Berliner Weisse'})
Style.create({name: 'Witbier'})
Style.create({name: 'American Wheat'})
Style.create({name: 'Weizenbier'})
Style.create({name: 'Black IPA'})
Style.create({name: 'Double IPA'})
Style.create({name: 'Milkshake IPA'})
Style.create({name: 'NEIPA'})
Style.create({name: 'RYE IPA'})
Style.create({name: 'Session IPA'})
Style.create({name: 'Dunkelweizen'})
Style.create({name: 'Weizenbock'})
Style.create({name: 'Lambic'})
Style.create({name: 'Gueuze'})
Style.create({name: 'Faro'})
Style.create({name: 'Fruit Beer'})
Style.create({name: 'Flanders Red'})
Style.create({name: 'Oud Bruin'})
Style.create({name: 'Belgian Gold'})
Style.create({name: 'Tripel'})
Style.create({name: 'Saison'})
Style.create({name: 'Belgian Pale Ale'})
Style.create({name: 'Belgian Dark Ale'})
Style.create({name: 'Dubbel'})
Style.create({name: 'Pale Ale'})
Style.create({name: 'American Pale Ale'})
Style.create({name: 'American Amber Ale'})
Style.create({name: 'Ordinary Bitter'})
Style.create({name: 'Special Bitter'})
Style.create({name: 'Extra Special Bitter'})
Style.create({name: 'Scottish light'})
Style.create({name: 'Scottish Heavy'})
Style.create({name: 'Scottish Export'})
Style.create({name: 'English Mild'})
Style.create({name: 'American Brown'})
Style.create({name: 'English Brown'})
Style.create({name: 'Porter'})
Style.create({name: 'Dry Stout'})
Style.create({name: 'Imperial Stout'})
Style.create({name: 'Milky Stout'})
Style.create({name: 'German Pilsner'})
Style.create({name: 'Bohemian Pilsner'})
Style.create({name: 'American Pilsner'})
Style.create({name: 'American light'})
Style.create({name: 'American Standard'})
Style.create({name: 'American Premium'})
Style.create({name: 'American Dark'})
Style.create({name: 'Munich Helles'})
Style.create({name: 'Dortmunder'})
Style.create({name: 'Munich Dunkel'})
Style.create({name: 'Schwartzbeir'})
Style.create({name: 'Helles Bock'})
Style.create({name: 'Doppelbock'})
Style.create({name: 'Traditional bock'})
Style.create({name: 'Eisbock'})
Style.create({name: 'Kölsch'})
Style.create({name: 'Altbier'})
Style.create({name: 'Bière de Garde'})
Style.create({name: 'Oktoberfest'})
Style.create({name: 'Vienna'})
Style.create({name: 'Cream Ale'})
Style.create({name: 'Steam Beer'})
Style.create({name: 'Rauchbier'})
Style.create({name: 'Barley Wine'})
Style.create({name: 'English Old Ale'})
Style.create({name: 'Scotch Ale'})

#Flavour.create({name: 'Banane'})
#Flavour.create({name: 'Biscuit'})
#Flavour.create({name: 'Boisé'})
#Flavour.create({name: 'Café'})
#Flavour.create({name: 'Caramel'})
#Flavour.create({name: 'Caramel dur'})
#Flavour.create({name: 'Chocolat'})
#Flavour.create({name: 'Empyreumatique'})
#Flavour.create({name: 'Epices'})
#Flavour.create({name: 'Fleurs'})
#Flavour.create({name: 'Foin'})
#Flavour.create({name: 'Fraise'})
#Flavour.create({name: 'Fruits'})
#Flavour.create({name: 'Fruits rouges'})
#Flavour.create({name: 'Fumée'})
#Flavour.create({name: 'Herbacé'})
#Flavour.create({name: 'Madère'})
#Flavour.create({name: 'Malté'})
#Flavour.create({name: 'Orange'})
#Flavour.create({name: 'Pain Grillé'})
#Flavour.create({name: 'Poire'})
#Flavour.create({name: 'Poivre'})
#Flavour.create({name: 'Raisin'})
#Flavour.create({name: 'Réglisse'})
#Flavour.create({name: 'Résineux'})
#Flavour.create({name: 'Torréfaction'})

#Taste.create({name: 'Acidulée'})
#Taste.create({name: 'Amère'})
#Taste.create({name: 'Sucrée'})
#Taste.create({name: 'Salée'})
#Taste.create({name: 'Umami'})
#Taste.create({name: 'Gras'})

#Texture.create({name: 'Plate'})
#Texture.create({name: 'Pétillante'})
#Texture.create({name: 'Chaleureuse'})
#Texture.create({name: 'Fraiche'})
#Texture.create({name: 'Légère'})
#Texture.create({name: 'Franche'})
#Texture.create({name: 'Crémeuse'})
#Texture.create({name: 'Mousseuse'})
#Texture.create({name: 'Trouble'})
#Texture.create({name: 'Claire'})

#Type.create({name: 'Bar'})
#Type.create({name: 'Brasserie artisanale'})
#Type.create({name: 'Cave'})
#Type.create({name: 'Grande surface'})
#Type.create({name: 'Festival'})

puts 'Done !'
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

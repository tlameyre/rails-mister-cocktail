require 'json'
require 'open-uri'

puts 'Detroying the Db lines'

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

puts 'Creating all the ingredients'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)
ingredients['drinks'].each do |ingredient|
  new_ingredient = Ingredient.new(
    name: ingredient['strIngredient1']
  )
  new_ingredient.save!
end

puts "Creating Cocktails"

Cocktail.create!(name: "Mojito")
Cocktail.create!(name: "Cuba Libre")

puts 'Finished'

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

# puts 'Creating Cocktails'
# ['Lavish Wine', 'Almond Cider', 'Wasabi Bear', 'Elemental Nectar', 'Sherry Twilight',
#  'Lavender Roar', 'Obvious Blizzard', 'First Dark Ale',
#  'Red White Wine', 'Cherry Night'].each do |cocktail|
#   new_cocktail = Cocktail.new(name: cocktail)
#   new_cocktail.save!
# end
puts 'Finished'

require 'open-uri'
require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# TIngredient.create(name: "lemon")
Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

puts 'Create ingredients'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = JSON.parse(open(url).read)
ingredients['drinks'].each do |ingredient|
  i = Ingredient.create(name: ingredient['strIngredient1'])
  puts "create #{i.name}"
end

puts 'drinks'
Cocktail.create(name: 'Mojito', picture_url:'https://unsplash.com/photos/cROF56xQhes')
Cocktail.create(name: 'Long Island Iced Tea', picture_url: 'https://unsplash.com/photos/2qnyu0DP2JI')
Cocktail.create(name: 'Caipirinha', picture_url: 'https://unsplash.com/photos/SwyGsjp7eiQ')
Cocktail.create(name: 'Moscow Mule', picture_url: 'https://unsplash.com/photos/kbch-i63YTg')
Cocktail.create(name: 'Daiquiri', picture_url: 'https://unsplash.com/photos/ZpY88WxjuDI')
Cocktail.create(name: 'Old Fashioned', picture_url:'https://unsplash.com/photos/bcXKAI-0Zx0')



descriptions = ["2 spoon of", "4 splash of", "3 pieces of", "2l of"]

20.times do
  Dose.create(
    description: descriptions.sample,
    ingredient: Ingredient.all.sample,
    cocktail: Cocktail.all.sample
  )
end

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


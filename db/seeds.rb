# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Supprime les données existantes pour éviter les doublons
Ingredient.destroy_all
RecipeIngredient.destroy_all
Recipe.destroy_all

User.create!(email: "admin@gmail.com", password: "azeqsd")

# Création des ingrédients
ingredients = []
15.times do |i|
  ingredients << Ingredient.create!(name: "Ingrédient #{i + 1}")
end
puts "15 ingrédients créés."

# Création des recettes
recipes = []
5.times do |i|
  recipes << Recipe.create!(
    name: "Recette #{i + 1}",
    description: "Description de la recette #{i + 1}",
    duration: rand(10..120), # Durée entre 10 et 120 minutes
    rating: rand(1..5), # Note entre 1 et 5
    difficulty: ["Facile", "Moyenne", "Difficile"].sample, # Difficulté aléatoire
    price: rand(5..50), # Prix entre 5 et 50 euros
    user: User.first # Associe le premier utilisateur
  )
end
puts "5 recettes créées."

# Création des associations `recipe_ingredients`
10.times do
  RecipeIngredient.create!(
    recipe: recipes.sample, # Associe une recette aléatoire
    ingredient: ingredients.sample, # Associe un ingrédient aléatoire
    quantity: rand(1..5), # Quantité entre 1 et 5
    unit: ["g", "ml", "pcs"].sample # Unité aléatoire
  )
end
puts "10 associations RecipeIngredient créées."

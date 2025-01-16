# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Recipe.new(name: "Pasta", description: "Pasta with tomato sauce", duration: 30, rating: 5, difficulty: "easy", price: 10, recipe_ingredient_id: 1).save

RecipeIngredient.new(name: "Pasta", quantity: 1, unit: "kg", recipe_id: 1).save
# t.text "description"
#     t.string "name"
#     t.integer "duration"
#     t.integer "rating"
#     t.string "difficulty"
#     t.integer "price"
#     t.bigint "recipe_ingredient_id", null: false

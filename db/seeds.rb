# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Categories
Category.create(name: "Breakfast")
Category.create(name: "Lunch")
Category.create(name: "Dinner")
Category.create(name: "Desserts")

# Recipes
Recipe.create(name: "Pancakes", description: "Fluffy pancakes with syrup", image_url: "pancakes.jpg", rating: 4.5)
Recipe.create(name: "Caesar Salad", description: "Crispy romaine lettuce with caesar dressing", image_url: "caesar_salad.jpg", rating: 4.0)
Recipe.create(name: "Spaghetti Carbonara", description: "Pasta with creamy sauce and bacon", image_url: "carbonara.jpg", rating: 4.8)
Recipe.create(name: "Chocolate Cake", description: "Rich and moist chocolate cake", image_url: "chocolate_cake.jpg", rating: 5.0)

# Bookmarks
Bookmark.create(recipe_id: 1, category_id: 1, comment: "Perfect for a Sunday breakfast!")
Bookmark.create(recipe_id: 2, category_id: 2, comment: "Great for a light lunch.")
Bookmark.create(recipe_id: 3, category_id: 3, comment: "A hearty dinner option.")
Bookmark.create(recipe_id: 4, category_id: 4, comment: "A must-have dessert!")

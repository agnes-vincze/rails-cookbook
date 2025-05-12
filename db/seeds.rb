# Destroy existing data (optional)
Bookmark.destroy_all
Category.destroy_all
Recipe.destroy_all

# Create categories
italian = Category.create!(name: "Italian")
seafood = Category.create!(name: "Seafood")
vegetarian = Category.create!(name: "Vegetarian")
dessert = Category.create!(name: "Dessert")

# Create recipes
lasagna = Recipe.create!(
  name: "World's Best Lasagna",
  description: "A classic meat lasagna layered with rich meat sauce and creamy ricotta cheese, perfect for family dinners.",
  image_url: "https://www.allrecipes.com/thmb/golmLzT4rSJfJ6QRi4e0G_82mDc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/23600-worlds-best-lasagna-armag-4x3-1-b24f9ad518d74090bf197828492c64a6.jpg",
  rating: 4.8
)

shrimp_scampi = Recipe.create!(
  name: "Quick and Easy Shrimp Scampi",
  description: "Succulent shrimp sautéed in a garlic butter sauce, served over a bed of linguine.",
  image_url: "https://www.allrecipes.com/thmb/JJ_bX7vgCGDE1ef2tZV9Up1s2CQ=/0x512/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/12814quick-and-easy-shrimp-scampiYoly4x3-5499d8177bb24b49ae1117c80f38fc76.jpg",
  rating: 4.7
)

brussels_sprouts = Recipe.create!(
  name: "Roasted Brussels Sprouts",
  description: "Crispy and caramelized Brussels sprouts roasted to perfection with olive oil and seasoning.",
  image_url: "https://www.allrecipes.com/thmb/Sf9OZFKINYqvB8lCIFJzV3ReFDk=/0x512/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/67952-roasted-brussels-sprouts-DDMFS-beauty-4x3-19890ead0b2e4d9f988402baba88b464.jpg",
  rating: 4.6
)

cookies = Recipe.create!(
  name: "Best Chocolate Chip Cookies",
  description: "Chewy and soft chocolate chip cookies loaded with gooey chocolate chips.",
  image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2022%2F03%2F08%2F10813-best-chocolate-chip-cookies-mfs-step-7-148.jpg&q=60&c=sc&poi=auto&orient=true&h=512",
  rating: 4.9
)

# Create bookmarks
Bookmark.create!(recipe: lasagna, category: italian, comment: "Classic comfort food!")
Bookmark.create!(recipe: shrimp_scampi, category: seafood, comment: "Easy weeknight dinner.")
Bookmark.create!(recipe: brussels_sprouts, category: vegetarian, comment: "Healthy and crispy!")
Bookmark.create!(recipe: cookies, category: dessert, comment: "Perfect treat after dinner.")

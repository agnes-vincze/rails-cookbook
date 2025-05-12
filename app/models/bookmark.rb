class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :recipe, presence: true
  validates :category, presence: true
  validates :recipe_id, uniqueness: { scope: :category_id }
end

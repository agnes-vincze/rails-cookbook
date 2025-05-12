class Recipe < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :categories, through: :bookmarks

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :rating, format: { with: /\A\d(\.\d{1})?\z/, message: 'must have at most one decimal place' }
end

class Recipe < ApplicationRecord
  has_many :recipe_ingredient
  belongs_to :user
end

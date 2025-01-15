class Recipe < ApplicationRecord
  belongs_to :recipe_ingredient
  belongs_to :user
end

class Recipe < ApplicationRecord
  has_many :recipe_ingredient
  has_many :step
  has_many :comment

  belongs_to :user
end

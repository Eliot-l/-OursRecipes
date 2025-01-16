class RemoveReferencesFromModelRecipe < ActiveRecord::Migration[7.1]
  def change
    remove_reference :recipes, :recipe_ingredient, null: false, foreign_key: true
  end
end

class CreateRecipeIngredients < ActiveRecord::Migration[7.1]
  def change
    create_table :recipe_ingredients do |t|
      t.integer :quantity
      t.string :unit
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.text :description
      t.string :name
      t.integer :duration
      t.integer :rating
      t.string :difficulty
      t.integer :price
      t.references :recipe_ingredient, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

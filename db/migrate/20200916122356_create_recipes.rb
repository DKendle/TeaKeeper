class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :ingredients
      t.string :instructions
      t.integer :difficulty
      t.integer :user_id
      t.integer :tea_id
      t.timestamps
    end
  end
end

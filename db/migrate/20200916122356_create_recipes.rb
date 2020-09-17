class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string  :fav_way_to_drink
      t.integer :user_id
      t.integer :tea_id
      t.timestamps
    end
  end
end

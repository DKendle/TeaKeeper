class CreateTeas < ActiveRecord::Migration[6.0]
  def change
    create_table :teas do |t|
      t.string :name
      t.string :type
      t.string :flavor
      t.string :store
      
      t.timestamps
    end
  end
end

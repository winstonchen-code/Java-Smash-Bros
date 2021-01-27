class CreateStages < ActiveRecord::Migration[6.0]
  def change
    create_table :stages do |t|
      t.string :name
      t.string :image
      t.string :music 
      t.integer :maxplayers
      t.integer :likes
      t.timestamps
    end
  end
end

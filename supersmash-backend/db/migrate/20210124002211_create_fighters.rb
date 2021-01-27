class CreateFighters < ActiveRecord::Migration[6.0]
  def change
    create_table :fighters do |t|
      t.string :name
      t.string :series
      t.string :image
      t.string :description
      t.integer :likes
      t.timestamps
    end
  end
end

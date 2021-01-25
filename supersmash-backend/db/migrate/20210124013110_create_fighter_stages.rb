class CreateFighterStages < ActiveRecord::Migration[6.0]
  def change
    create_table :fighter_stages do |t|
      t.integer :fighter_id
      t.integer :stage_id
      t.timestamps
    end
  end
end

class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.integer :current_floor
      t.integer :target_floor

      t.timestamps
    end
  end
end

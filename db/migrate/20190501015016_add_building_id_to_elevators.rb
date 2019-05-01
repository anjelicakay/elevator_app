class AddBuildingIdToElevators < ActiveRecord::Migration[5.2]
  def change
    add_column :elevators, :building_id, :integer
  end
end

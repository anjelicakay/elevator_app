class AddDirectionToElevator < ActiveRecord::Migration[5.2]
  def change
    add_column :elevators, :direction, :string
  end
end

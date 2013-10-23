class AddModelToVehicleType < ActiveRecord::Migration
  def change
  	add_column :vehicles, :model, :string
  end
end

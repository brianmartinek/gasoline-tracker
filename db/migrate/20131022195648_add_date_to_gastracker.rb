class AddDateToGastracker < ActiveRecord::Migration
  def change
  	add_column :gastrackers, :dateform, :date
  end
end

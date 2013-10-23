class ChangeGallonsFromIntegerToDecimal < ActiveRecord::Migration
  def up
  	change_column :gastrackers, :gallons, :decimal, :precision => 8, :scale => 2
  end

  def down
  	change_column :gastrackers, :gallons, :integer
  end
end

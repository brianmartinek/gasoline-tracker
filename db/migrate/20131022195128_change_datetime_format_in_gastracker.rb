class ChangeDatetimeFormatInGastracker < ActiveRecord::Migration
  def up
  	change_column :gastrackers, :date, :date
  end

  def down
  	change_column :gastrackers, :date, :datetime
  end
end

class CreateGastrackers < ActiveRecord::Migration
  def change
    create_table :gastrackers do |t|
      t.datetime :date
      t.string :vehicle
      t.integer :gallons
      t.integer :marketprice
      t.integer :totalregularfillup
      t.integer :artificialprice
      t.integer :savingstransfer
      t.integer :totalfillupcost

      t.timestamps
    end
  end
end

class Gastracker < ActiveRecord::Base
  attr_accessible :artificialprice, :dateform, :gallons, :marketprice, :savingstransfer, :totalfillupcost, :totalregularfillup, :vehicle


has_many :vehicles





end

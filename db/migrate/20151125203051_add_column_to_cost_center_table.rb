class AddColumnToCostCenterTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :cost_centers, :threshold_amount, :decimal, precision: 8, scale: 2
  end
end

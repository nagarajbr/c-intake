class AddColumnToCostCenterTable1 < ActiveRecord::Migration[5.2]
  def change

  	add_column :cost_centers, :service_type, :integer

  end
end

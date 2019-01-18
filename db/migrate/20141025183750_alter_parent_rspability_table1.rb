class AlterParentRspabilityTable1 < ActiveRecord::Migration[5.2]
  def up
  	add_column :client_parental_rspabilities, :parent_status, :integer,null: false
  end
end

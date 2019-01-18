class AlterHouseholdsModifyFields1 < ActiveRecord::Migration[5.2]
  def change
  	rename_column :households, :state, :registration_status
  end
end

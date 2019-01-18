class AlterTableProvider4 < ActiveRecord::Migration[5.2]
  def up
  	rename_column :providers, :aasis_verified_status, :status
  	rename_column :providers, :aasis_verified_date, :status_date
  end
end

class AddColumnsToProvidersTable < ActiveRecord::Migration[5.2]
  def up
  	add_column :providers, :aasis_verified_status, :integer
	add_column :providers, :aasis_verified_date, :date
  end
end

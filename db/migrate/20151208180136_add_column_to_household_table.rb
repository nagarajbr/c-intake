class AddColumnToHouseholdTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :households, :intake_worker_id, :string
  	add_column :households, :processing_location_id, :integer
  end
end

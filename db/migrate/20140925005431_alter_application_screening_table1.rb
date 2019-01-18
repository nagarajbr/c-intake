class AlterApplicationScreeningTable1 < ActiveRecord::Migration[5.2]
  def change
  	add_column :application_screenings, :client_application_id, :integer, null: false
  end
end

class AlterApplicationScreeningTable2 < ActiveRecord::Migration[5.2]
  def change
  	add_column :application_screenings, :determined_case_type, :integer
  end
end

class AlterProgramUnits4 < ActiveRecord::Migration[5.2]
  def change
  	 add_column :program_units, :case_manager_id, :integer
  end
end

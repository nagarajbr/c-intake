class AlterProgramUnitTable1 < ActiveRecord::Migration[5.2]
  def change
  	add_column :program_units, :program_unit_status, :integer
  end
end

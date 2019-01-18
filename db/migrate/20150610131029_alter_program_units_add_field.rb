class AlterProgramUnitsAddField < ActiveRecord::Migration[5.2]
  def change
  	add_column :program_units, :eligible_for_planning, "char(1)"
  end
end

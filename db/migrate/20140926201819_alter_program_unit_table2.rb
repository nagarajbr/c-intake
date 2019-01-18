class AlterProgramUnitTable2 < ActiveRecord::Migration[5.2]
  def change
  		add_column :program_units, :case_type, :integer
  end
end

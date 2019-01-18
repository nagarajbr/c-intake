class AlterTableProgramUnitRepresentatives < ActiveRecord::Migration[5.2]
	def up
		rename_column :program_unit_representatives, :type, :representative_type
	end
end

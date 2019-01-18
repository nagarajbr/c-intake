class ProgramUnitMembersAlterTable1 < ActiveRecord::Migration[5.2]
  def change
  	add_column :program_unit_members, :primary_beneficiary,:string, limit: 1
  end
end

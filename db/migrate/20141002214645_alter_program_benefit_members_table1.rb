class AlterProgramBenefitMembersTable1 < ActiveRecord::Migration[5.2]
  def change
  	add_column :program_benefit_members, :member_sequence, :integer
  end
end

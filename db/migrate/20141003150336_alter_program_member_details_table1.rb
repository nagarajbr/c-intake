class AlterProgramMemberDetailsTable1 < ActiveRecord::Migration[5.2]
  def up
  	add_column :program_member_details, :program_member_summary_id, :integer
  end
end

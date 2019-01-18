class AlterNoticeGenerations < ActiveRecord::Migration[5.2]
  def change
  	add_column :notice_generations, :program_wizard_id, :integer
  end
end

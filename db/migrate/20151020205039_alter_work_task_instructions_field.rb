class AlterWorkTaskInstructionsField < ActiveRecord::Migration[5.2]
  def change
  	change_column :work_tasks, :instructions, "text"
  end

end

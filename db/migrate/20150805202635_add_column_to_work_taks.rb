class AddColumnToWorkTaks < ActiveRecord::Migration[5.2]
  def change
  	add_column :work_tasks, :program_unit_id, :integer
  end
end

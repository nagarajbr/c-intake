class AddColumnToProgramUnit < ActiveRecord::Migration[5.2]
  def change
  	 add_column :program_units, :deny_notice_generation_flag , "char(1)"
  end
end

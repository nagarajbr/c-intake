class NoticeTextServiceProgramIdIsNull < ActiveRecord::Migration[5.2]
  def change
  	  change_column :notice_texts, :service_program_id, :integer, null:true
  end
end

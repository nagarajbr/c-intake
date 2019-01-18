class AlterNotesColumns < ActiveRecord::Migration[5.2]
  def change
  	change_column :notes, :reference_id,  :integer, null:true
  	change_column :notes, :notes ,  :text
  end
end

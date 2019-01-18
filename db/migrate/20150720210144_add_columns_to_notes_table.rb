class AddColumnsToNotesTable < ActiveRecord::Migration[5.2]
  def up
  	add_column :notes, :reference_id , :integer, null:false
  end
end

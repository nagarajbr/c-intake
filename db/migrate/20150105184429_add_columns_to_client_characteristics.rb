class AddColumnsToClientCharacteristics < ActiveRecord::Migration[5.2]
  def up
  	add_column :client_characteristics, :start_date , :date, null:false
  	add_column :client_characteristics, :end_date , :date
  end
end

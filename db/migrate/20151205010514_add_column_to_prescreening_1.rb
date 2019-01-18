class AddColumnToPrescreening1 < ActiveRecord::Migration[5.2]
  def change
  	add_column :prescreen_households, :processing_location, :integer
  end
end

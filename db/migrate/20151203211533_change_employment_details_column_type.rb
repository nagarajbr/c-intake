class ChangeEmploymentDetailsColumnType < ActiveRecord::Migration[5.2]
  def up
  	change_column :employment_details, :position_type, :string, null:true
  end
  def down
  	change_column :employment_details, :position_type, :integer, null:true
  end
end

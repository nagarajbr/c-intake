class AlterEmployments3 < ActiveRecord::Migration[5.2]
  def change
  	change_column :employments, :employer_name, :string, limit: 35, null:true
  	change_column :employments, :employer_id, :integer, null:false
  end
end

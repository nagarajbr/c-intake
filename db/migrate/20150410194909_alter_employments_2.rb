class AlterEmployments2 < ActiveRecord::Migration[5.2]
  def change
  	add_column :employments, :employer_id, :integer
  end
end

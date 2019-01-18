class AlterHouseholdsAddStateField < ActiveRecord::Migration[5.2]
  def change

  	add_column :households, :state, :integer
  end
end

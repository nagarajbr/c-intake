class AlterUser2 < ActiveRecord::Migration[5.2]
  def change
  	 change_column :users, :permissions, :string ,array:true
  end
end

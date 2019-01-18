class CreateAddColumnToUsers < ActiveRecord::Migration[5.2]
   def up
  	add_column :users, :reports_to, :integer
   end
end

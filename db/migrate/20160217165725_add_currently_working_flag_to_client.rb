class AddCurrentlyWorkingFlagToClient < ActiveRecord::Migration[5.2]
  def change
  	add_column :clients, :currently_working_flag, :string, limit: 1
  end
end

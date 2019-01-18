class AlterTableClientAddVeteranFlag < ActiveRecord::Migration[5.2]
  def up
  	add_column :clients, :veteran_flag, :string, limit: 1
  end
end

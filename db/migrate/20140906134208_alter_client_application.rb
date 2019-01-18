class AlterClientApplication < ActiveRecord::Migration[5.2]
  def up
  	add_column :client_applications, :wizard_step, :integer
  end
end

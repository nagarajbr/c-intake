class AddColumnToPrescreening < ActiveRecord::Migration[5.2]
  def change
  	add_column :prescreen_households, :intake_worker, :string
  end
end

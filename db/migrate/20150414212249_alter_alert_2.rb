class AlterAlert2 < ActiveRecord::Migration[5.2]
  def change
  	 add_column :alerts, :status, :integer
  end
end

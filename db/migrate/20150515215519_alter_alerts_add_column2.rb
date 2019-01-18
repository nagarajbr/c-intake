class AlterAlertsAddColumn2 < ActiveRecord::Migration[5.2]
  def change
  	 add_column :alerts, :information_only, "char(1)"
  end
end

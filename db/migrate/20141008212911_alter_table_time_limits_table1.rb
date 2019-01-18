class AlterTableTimeLimitsTable1 < ActiveRecord::Migration[5.2]
  def change
  	remove_column :time_limits, :payment_month
  	remove_column :time_limits, :skip_count
  	remove_column :time_limits, :out_of_state_count
  end
end

class AlterWadcTemps < ActiveRecord::Migration[5.2]
  def up
  	add_column :wadc_temps, :county, :string, limit: 3
  	add_column :wadc_temps, :retro_amount, :string, limit: 5
  end
end

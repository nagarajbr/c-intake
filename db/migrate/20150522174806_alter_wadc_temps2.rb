class AlterWadcTemps2 < ActiveRecord::Migration[5.2]
  def change
  	change_column :wadc_temps, :category, 'integer USING CAST(category AS integer)'
  	change_column :wadc_temps, :recoupment, "varchar(255)"
  end
end


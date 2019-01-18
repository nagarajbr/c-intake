class ChangeAddressField < ActiveRecord::Migration[5.2]
  def change
  	change_column :addresses, :federal_housing_flag, 'integer USING CAST(federal_housing_flag AS integer)'
  	rename_column :addresses, :federal_housing_flag, :living_arrangement

  end
end

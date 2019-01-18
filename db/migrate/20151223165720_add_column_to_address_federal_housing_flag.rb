class AddColumnToAddressFederalHousingFlag < ActiveRecord::Migration[5.2]
  def change
  	add_column :addresses, :federal_housing_flag, "char(1)"
  end
end

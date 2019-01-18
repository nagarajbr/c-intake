class AddColumnsToLocalOfficeInformations < ActiveRecord::Migration[5.2]
  def change
  	add_column :local_office_informations, :latitude, :float
  	add_column :local_office_informations, :longitude, :float
  end
end

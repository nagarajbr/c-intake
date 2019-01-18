class ImportDataFromFile < ActiveRecord::Migration[5.2]
  def change
  	create_table :import_data_from_files do |t|
	  	 t.string  :name
	  	 t.integer :age
	end
  end
end

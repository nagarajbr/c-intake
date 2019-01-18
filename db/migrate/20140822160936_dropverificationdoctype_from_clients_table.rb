class DropverificationdoctypeFromClientsTable < ActiveRecord::Migration[5.2]
  def up
  	remove_column :clients, :verfication_doc_type
  	rename_column :clients, :verfication_date, :identification_verfication_date
  end
end

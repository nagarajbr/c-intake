class AddColumnToClientsTable < ActiveRecord::Migration[5.2]
  def up
  	 add_column :clients, :other_identification_document, :string,limit: 15
  end
end

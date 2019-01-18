class ClientsModifyOtherIdentification < ActiveRecord::Migration[5.2]
  def change
  	change_column :clients, :other_identification_document, :string, limit: 50, null:true
  end
end

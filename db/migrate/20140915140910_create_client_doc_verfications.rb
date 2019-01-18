class CreateClientDocVerfications < ActiveRecord::Migration[5.2]
  def change
    create_table :client_doc_verfications do |t|
        t.references :client, index: true,null:false
    	t.integer :document_type
    	t.date    :document_verfied_date
        t.integer :created_by , null:false
    	t.integer :updated_by , null:false
        t.timestamps
    end
  end
end

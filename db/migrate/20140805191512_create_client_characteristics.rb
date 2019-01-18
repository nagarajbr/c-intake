class CreateClientCharacteristics < ActiveRecord::Migration[5.2]
  def change
    create_table :client_characteristics do |t|
      t.references :client, index: true
      #t.belongs_to :characteristic, polymorphic: true
      t.integer :characteristic_id
      t.string :characteristic_type
      t.integer :created_by , null:false
      t.integer :updated_by , null:false
      t.timestamps
    end
  end
end

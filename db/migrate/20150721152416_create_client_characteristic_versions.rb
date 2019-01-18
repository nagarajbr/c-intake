class CreateClientCharacteristicVersions < ActiveRecord::Migration[5.2]
  def change
    create_table :client_characteristic_versions do |t|
      t.string   :item_type, :null => false
      t.integer  :item_id,   :null => false
      t.string   :event,     :null => false
      t.string   :whodunnit
      t.json     :object
      t.json     :object_changes
      t.datetime :created_at
    end
    add_index :client_characteristic_versions, [:item_type, :item_id]
  end
end

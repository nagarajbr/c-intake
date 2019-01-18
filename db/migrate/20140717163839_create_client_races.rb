class CreateClientRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :client_races do |t|
      t.references :client, index: true
      t.integer :race_type
      t.integer :created_by , null:false
      t.integer :updated_by , null:false
      t.timestamps
    end
  end
end

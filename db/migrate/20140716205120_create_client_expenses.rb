class CreateClientExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :client_expenses do |t|
      t.references :client, index: true
      t.references :expense, index: true
      t.integer :created_by , null:false
      t.integer :updated_by , null:false
      t.timestamps
    end
  end
end

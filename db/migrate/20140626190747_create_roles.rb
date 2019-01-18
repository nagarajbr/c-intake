class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :name
      t.string :description
      t.integer :created_by_user_id
      t.integer :updated_by_user_id

      t.timestamps
    end
  end
end

class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.references :user, index: true
      t.references :role, index: true

      t.timestamps
    end
  end
end

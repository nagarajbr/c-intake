class CreatePguActions < ActiveRecord::Migration[5.2]
  def change
    create_table :pgu_actions do |t|
      t.integer :program_unit_id
      t.timestamps
    end
  end
end

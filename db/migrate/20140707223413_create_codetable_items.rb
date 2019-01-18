class CreateCodetableItems < ActiveRecord::Migration[5.2]
  def change
    create_table :codetable_items do |t|
      t.references :code_table, index: true
      t.string :short_description
      t.string :long_description
      t.boolean :system_defined

      t.timestamps
    end
  end
end

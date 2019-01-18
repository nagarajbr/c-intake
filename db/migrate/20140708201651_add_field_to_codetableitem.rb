class AddFieldToCodetableitem < ActiveRecord::Migration[5.2]
  def up
    add_column :codetable_items, :active, :boolean

  end
end

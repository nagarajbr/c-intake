class CreateAllTypeColumnToCodetableitems < ActiveRecord::Migration[5.2]
def up
    add_column :codetable_items, :type, :string
end
end



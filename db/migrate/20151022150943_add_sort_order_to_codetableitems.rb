class AddSortOrderToCodetableitems < ActiveRecord::Migration[5.2]
  def change
  	add_column :codetable_items, :sort_order, :integer
  end
end

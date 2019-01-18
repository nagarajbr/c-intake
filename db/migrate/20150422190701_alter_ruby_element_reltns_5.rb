class AlterRubyElementReltns5 < ActiveRecord::Migration[5.2]
  def change
  		add_column :ruby_element_reltns, :child_order, "integer"
  end
end

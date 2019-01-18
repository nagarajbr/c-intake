class AlterRubyElements5 < ActiveRecord::Migration[5.2]
  def change
  	add_column :ruby_elements, :parent_flag, "char(1)"
  	add_column :ruby_elements, :parent_order, "integer"
  end
end

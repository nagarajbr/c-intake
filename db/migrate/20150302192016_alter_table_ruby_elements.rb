class AlterTableRubyElements < ActiveRecord::Migration[5.2]
  def change
  	change_column :ruby_elements, :element_name,:string,limit: 255
  end
end

class ChangeDataTypeForElementName < ActiveRecord::Migration[5.2]
  def change
  	change_column :ruby_elements, :element_name, "varchar(100)"
  end
end

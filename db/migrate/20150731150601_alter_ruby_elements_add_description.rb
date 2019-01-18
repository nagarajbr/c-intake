class AlterRubyElementsAddDescription < ActiveRecord::Migration[5.2]
  def change
  	add_column :ruby_elements, :description, :string
  end
end

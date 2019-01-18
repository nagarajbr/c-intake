class CreateRubyElementReltns < ActiveRecord::Migration[5.2]
  def change
    create_table :ruby_element_reltns do |t|
      t.integer :parent_element_id
      t.integer :child_element_id

      t.timestamps
    end
  end
end

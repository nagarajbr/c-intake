class CreateRubyElements < ActiveRecord::Migration[5.2]
  def change
    create_table :ruby_elements do |t|
      t.string :element_name

      t.timestamps
    end
  end
end

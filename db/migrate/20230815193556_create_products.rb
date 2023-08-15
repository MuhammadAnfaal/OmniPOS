class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :quantity_in_stock
      
      t.timestamps
    end
  end
end

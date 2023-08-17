class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity_in_stock
      t.text :description
      t.references :sub_catagory, null: false, foreign_key: true

      t.timestamps
    end
  end
end

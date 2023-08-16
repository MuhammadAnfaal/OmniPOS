class CreateVariationTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :variation_types do |t|
      t.integer :sub_catagories_id
      t.string :type

      t.timestamps
    end
  end
end

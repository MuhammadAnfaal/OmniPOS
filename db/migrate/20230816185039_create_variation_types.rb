class CreateVariationTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :variation_types do |t|
      t.string :type
      t.references :sub_catagory, null: false, foreign_key: true

      t.timestamps
    end
  end
end

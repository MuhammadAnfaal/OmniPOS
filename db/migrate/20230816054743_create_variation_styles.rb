class CreateVariationStyles < ActiveRecord::Migration[6.1]
  def change
    create_table :variation_styles do |t|
      t.integer :variation_types_id
      t.string :type

      t.timestamps
    end
  end
end

class CreateVariationStyles < ActiveRecord::Migration[6.1]
  def change
    create_table :variation_styles do |t|
      t.string :type
      t.references :variation_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end

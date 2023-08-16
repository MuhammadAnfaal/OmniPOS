class CreateSubCatagories < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_catagories do |t|
      t.string :type_name
      t.references :catagory, null: false, foreign_key: true

      t.timestamps
    end
  end
end

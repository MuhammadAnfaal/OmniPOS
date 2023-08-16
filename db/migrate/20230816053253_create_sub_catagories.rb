class CreateSubCatagories < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_catagories do |t|
      t.integer :catagories_id
      t.string :type_name

      t.timestamps
    end
  end
end

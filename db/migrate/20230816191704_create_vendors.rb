class CreateVendors < ActiveRecord::Migration[6.1]
  def change
    create_table :vendors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end

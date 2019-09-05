class CreateEditorials < ActiveRecord::Migration[5.2]
  def change
    create_table :editorials do |t|
      t.string :business_name
      t.string :rut
      t.string :address
      t.string :contact
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end

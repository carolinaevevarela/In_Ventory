class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :titulo
      t.string :autor
      t.integer :isbn
      t.string :editorial

      t.timestamps
    end
  end
end

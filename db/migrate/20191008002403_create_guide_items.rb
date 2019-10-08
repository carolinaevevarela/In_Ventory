class CreateGuideItems < ActiveRecord::Migration[5.2]
  def change
    create_table :guide_items do |t|
      t.references :guide, foreign_key: true
      t.string :isbn
      t.integer :quantity
      t.integer :pneto
      t.integer :pvp

      t.timestamps
    end
  end
end

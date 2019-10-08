class CreateGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :guides do |t|
      t.references :editorial, foreign_key: true
      t.integer :number_of_guide

      t.timestamps
    end
  end
end

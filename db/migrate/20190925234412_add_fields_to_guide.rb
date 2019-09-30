class AddFieldsToGuide < ActiveRecord::Migration[5.2]
  def change
    add_column :guides, :isbn, :integer
    add_column :guides, :title, :string
    add_column :guides, :quantity, :integer
    add_column :guides, :pneto, :integer
    add_column :guides, :pvp, :integer
  end
end

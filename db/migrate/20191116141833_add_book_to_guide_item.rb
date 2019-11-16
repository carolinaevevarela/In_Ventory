class AddBookToGuideItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :guide_items, :book, foreign_key: true
  end
end

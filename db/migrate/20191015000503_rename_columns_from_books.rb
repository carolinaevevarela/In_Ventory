class RenameColumnsFromBooks < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :title, :title
    rename_column :books, :author, :author
  end
end

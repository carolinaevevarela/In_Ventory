class RenameColumnsFromBooks < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :titulo, :title
    rename_column :books, :autor, :author
  end
end

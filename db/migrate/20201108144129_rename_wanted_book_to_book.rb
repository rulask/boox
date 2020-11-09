class RenameWantedBookToBook < ActiveRecord::Migration[6.0]
  def change
    rename_column :trades, :wanted_book_id, :book_id
  end
end

class AddPagecountToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :pagecount, :integer
  end
end

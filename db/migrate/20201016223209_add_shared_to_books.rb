class AddSharedToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :shared, :boolean, default: 0
  end
end

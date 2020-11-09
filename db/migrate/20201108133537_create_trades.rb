class CreateTrades < ActiveRecord::Migration[6.0]
  def change
    create_table :trades do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.integer :wanted_book_id
      t.integer :proposed_book_id
      t.integer :status

      t.timestamps
    end
  end
end

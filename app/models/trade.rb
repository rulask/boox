class Trade < ApplicationRecord
  belongs_to :sender, :class_name => 'User'
  belongs_to :recipient, :class_name => 'User'

  belongs_to :book
  belongs_to :proposed_book, :class_name => 'Book'

  enum status: [:waiting, :approved, :denied]
end

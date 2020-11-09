class Book < ApplicationRecord
  has_many :comments, dependent: :delete_all
  has_many :trades, dependent: :delete_all

  accepts_nested_attributes_for :comments

  validates :title, presence: true
  validates :author, presence: true

  belongs_to :user
end

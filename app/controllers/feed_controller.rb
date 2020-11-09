class FeedController < ApplicationController
  def index
    @books = Book.where(shared: :true)
  end
end

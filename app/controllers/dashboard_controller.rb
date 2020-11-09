class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @books = Book.all
    @my_books = current_user.books
    @comments = Comment.where(commenter: current_user.username)
    @users = User.all
    @trades = Trade.all
  end
end

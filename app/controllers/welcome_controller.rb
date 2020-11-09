class WelcomeController < ApplicationController
  def index
    if current_user
      redirect_to feed_url
    else
      @books = Book.where(shared: :true)
    end
  end
end

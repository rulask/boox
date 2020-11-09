class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def index
    redirect_to root_path
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = current_user.books.build(book_params)

    if @book.save
      redirect_to dashboard_url
    else
      render 'new'
    end
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to dashboard_url
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to dashboard_url
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :pagecount, :shared)
  end
end

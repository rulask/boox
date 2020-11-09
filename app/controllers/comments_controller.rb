class CommentsController < ApplicationController
  before_action :authenticate_user!

  def show
    @book = Book.find(params[:id])
    @comment = Comment.find(params[:book_id])
  end

  def edit
    @book = Book.find(params[:id])
    @comment = Comment.find(params[:book_id])
  end

  def create
    @book = Book.find(params[:book_id])
    @comment = @book.comments.create(comment_params)

    respond_to do |format|
      format.js
    end
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update(comment_params)
      redirect_to dashboard_url
    else
      render 'edit'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :content, :commenter, :approved)
  end
end

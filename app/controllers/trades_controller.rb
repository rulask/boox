class TradesController < ApplicationController
  def show
    @trade = Trade.find(params[:id])
  end

  def edit
    @book = Book.find(params[:book_id])
    @trade = Trade.find(params[:id])
  end

  def create
    @book = Book.find(params[:book_id])
    @trade = @book.trades.create(trade_params)

    if @trade.save
      redirect_to dashboard_url
    else
      render 'new'
    end
  end

  def update
    @books = Book.all
    @trade = Trade.find(params[:id])

    if @trade.update(trade_params)
      redirect_to dashboard_url
    else
      render 'edit'
    end
  end
  private
  def trade_params
    params.require(:trade).permit(:recipient_id, :sender_id, :book_id, :proposed_book_id, :status)
  end
  end

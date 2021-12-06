class BooksController < ApplicationController
  def index
    @books =Book.all
    render json: @book
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to(@book)
    else
      render "edit"
    end
  end
  
  def show
    @book = Book.find_by(id: params[:id])
    if @book.nil?
      @books = Book.all
      flash.now[:alert] = "Your book was not found"
      render "index"
    end
  end
  
end

class BooksController < ApplicationController
  def new
    @book=Book.new
  end
  
  def create
    @book=Book.new(book_params)
    @book.user_id=current_user.id
    @book.user_name=current_user.name
    @book.save
    redirect_to book_path
  end

  def index
    @book=Book.all
    
  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body, :image)
  end

end

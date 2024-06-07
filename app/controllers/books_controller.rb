class BooksController < ApplicationController
  def new
    @book=Book.new
  end
  
  def create
    @book=Book.new(book_params)
    @book.user_id=current_user.id
    @book.user_name=current_user.name
    if @book.save
      redirect_to books_path(book.id)
    end
  end

  def index
    @books=Book.all
    
  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
    @book=Bool.find(params[:id])
  end
  
  def update
    @book=Book.find(params[:id])
    book.update(book_params)
    redirect_to books_path(book.id)
  end
  
  def destroy
    @book=Book.find(params[:id])
    book.destroy
    redirect_to book_path
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body, :image)
  end

end

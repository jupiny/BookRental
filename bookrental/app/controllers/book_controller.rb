class BookController < ApplicationController
  def borrowed
    @borrowed_books = current_user.borrowed_books
  end

  def show 
    @book = Book.find(params[:id])
  end

  # 대출
  def check_out
    book = Book.find(params[:id])
    current_user.borrowed_books << book
    redirect_to borrowed_books_path
  end

  # 반납 
  def check_in
    book = Book.find(params[:id])
    current_user.borrowed_books.delete(book)
    redirect_to borrowed_books_path
  end
end

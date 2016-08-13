class BookController < ApplicationController
  def borrowed
    @borrowed_books = current_user.borrowed_books
  end

  def show 
    @book = Book.find(params[:id])
  end
end

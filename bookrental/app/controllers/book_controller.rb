class BookController < ApplicationController
  def borrowed
    @borrowed_books = current_user.borrowed_books
  end
end

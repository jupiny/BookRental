class BookController < ApplicationController
  def book_infos
    @book_infos = BookInfo.all
  end
end

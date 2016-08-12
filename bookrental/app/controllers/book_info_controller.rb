class BookInfoController < ApplicationController
  def show 
    @book_infos = BookInfo.all
  end
end

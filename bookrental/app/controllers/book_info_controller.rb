class BookInfoController < ApplicationController
  def index 
    @book_infos = BookInfo.all
  end

  def show 
    @book_info = BookInfo.find(params[:id])
  end
end

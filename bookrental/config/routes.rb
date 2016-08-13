Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  get 'home/index'

  get '/bookinfos', to: 'book_info#index'
  get '/bookinfos/:id', to: 'book_info#show', as: 'bookinfo'
  get '/books/borrowed', to: 'book#borrowed', as: 'borrowed_books'
  get '/books/:id', to: 'book#show', as: 'book'
  patch '/books/:id', to: 'book#check_out', as: 'borrow_book'
end

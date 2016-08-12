Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  get 'home/index'

  get '/bookinfos', to: 'book_info#show', as: 'book_infos'
end

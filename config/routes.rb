Rails.application.routes.draw do

  devise_for :users
  root to: "home#top"
  get 'home/about', as: 'about'
  resources :books, only:[:edit, :create, :index, :show, :update, :destroy]
  resources :users, only:[:index, :edit, :show, :update]
  
end

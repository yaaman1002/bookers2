Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"
  get 'homes/about', as: 'about'
  resources :books, only:[:new, :create, :index, :show, :update, :destroy]
  resources :users, only:[:index, :edit, :show, :update]
 
end

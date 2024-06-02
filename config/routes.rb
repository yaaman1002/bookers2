Rails.application.routes.draw do
  resources :books, only:[:new, :create, :index, :show, :destroy]
  resources :users, only:[:edit, :show, :update]
  devise_for :users
  root to: "homes#top"
end

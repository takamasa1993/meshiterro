Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
 
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
  resource :favorite, only: [:create, :destroy]
  resources :post_comments, only: [:create, :destroy]
  end
  get 'homes/about', to: 'homes#about', as: 'about'
  resources :users, only: [:show, :edit, :update]
end
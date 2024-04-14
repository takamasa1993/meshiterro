Rails.application.routes.draw do
root to: "homes#top"
devise_for :users
get 'homes/about', to: 'homes#about', as: 'about'
end
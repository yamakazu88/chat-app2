Rails.application.routes.draw do
  devise_for :rooms
  devise_for :users
  root to: "messages#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]

end

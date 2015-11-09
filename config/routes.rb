Rails.application.routes.draw do

  root 'top#index'
  devise_for :users
  resources :prototypes
  resources :tags, only: [:index, :show]
  resources :users, only: [:edit, :update, :show]

end

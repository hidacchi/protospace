Rails.application.routes.draw do

  root 'top#index'
  devise_for :users
  resources :prototypes
  namespace :prototypes do #rails g controller prototypes/users
    resources :users, only: [:edit, :update, :show]
  end
  resources :tags, only: [:index, :show]
  resources :comments, only: [:new, :create]
  resources :likes, only: [:create, :destroy]
end

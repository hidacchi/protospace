Rails.application.routes.draw do

  root 'top#index'
  devise_for :users

  namespace :prototypes do #rails g controller prototypes/users
    resources :users, only: [:edit, :update, :show]
    resources :newest, only: [:index]
    resources :popular, only: [:index]
  end

  resources :prototypes
  resources :tags, only: [:index, :show]
  resources :comments, only: [:new, :create]
  resources :likes, only: [:create, :destroy]
end

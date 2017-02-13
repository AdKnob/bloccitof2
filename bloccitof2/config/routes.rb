Rails.application.routes.draw do

  get 'welcome/index'

  devise_for :users

  resources :users, only: [:show]

  resources :items, only: [:create]

  root 'users#show'
end

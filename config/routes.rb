Rails.application.routes.draw do
  resources :questions

  resources :review_forms
  devise_for :users


  get 'new_user', to: 'users#new'
  post 'new_user', to: 'users#create'
  get 'users', to: 'users#index'
  get 'users/:id/edit', to: 'users#edit', as: 'edit'
  patch 'update/:id', to: 'users#update', as: 'update'

  delete "users/:id", to: "users#destroy", as: 'user'
  #get 'home/index'
  root to: "home#index"
  #get 'users/:id', to: 'index#new', as: 'user', id: /\d+/
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

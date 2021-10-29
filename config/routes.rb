Rails.application.routes.draw do
  get 'review_form/index'
  get 'review_form/show'
  get 'review_form/new'
  get 'review_form/create'
  devise_for :users
  #get 'home/index'
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

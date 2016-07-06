Rails.application.routes.draw do
  
  devise_for :users
  root 'products#index'

  resources :products

  get 'page/about'
  get 'page/contact'
end

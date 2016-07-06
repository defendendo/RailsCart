Rails.application.routes.draw do
  
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'

  devise_for :users
  root 'products#index'

  resources :products

  get 'page/about'
  get 'page/contact'
end

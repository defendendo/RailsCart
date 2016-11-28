Rails.application.routes.draw do
  
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'

  devise_for :users, controllers: {
    sessions: "users/sessions" ,
    confirmations: "users/confirmations"
  }

  root 'products#index'

  resources :products

  get 'page/about'
  get 'page/contact'

  resources :contacts
end

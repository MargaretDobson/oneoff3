Rails.application.routes.draw do
  get 'users/show'
  resources :products
  resources :charges
  devise_for :users, :controllers => { registrations: 'registrations' }

  get 'users/show'
  root 'products#index'

  
end


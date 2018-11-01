Rails.application.routes.draw do
  resources :products
  resources :charges
  devise_for :users, :controllers => { registrations: 'registrations' }

  root 'products#index'

  
end


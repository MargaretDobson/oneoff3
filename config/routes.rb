Rails.application.routes.draw do
  resources :products
  devise_for :users, :controllers => { registrations: 'registrations' }

  root 'products#index'

  
end


Rails.application.routes.draw do
  get 'users/show'
  resources :products
  devise_for :users, :controllers => { registrations: 'registrations' }

  get 'users/show'
  root 'products#index'

end


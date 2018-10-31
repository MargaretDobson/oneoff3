Rails.application.routes.draw do
  resources :products
  devise_for :users
  root 'global#index'
  root 'posts#index'
  get 'global/index'

  resources :products

end

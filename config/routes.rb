Rails.application.routes.draw do
  resources :products
  devise_for :users
  root 'global#index'
  get 'global/index'

end

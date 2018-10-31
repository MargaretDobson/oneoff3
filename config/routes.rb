Rails.application.routes.draw do
  devise_for :users
  root 'global#index'
  root 'posts#index'
  get 'global/index'

  resources :products

end

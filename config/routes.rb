Rails.application.routes.draw do
  resources :products
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'global#index'
  get 'global/index'
end

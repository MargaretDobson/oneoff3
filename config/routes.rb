Rails.application.routes.draw do

  resources :questions
  post 'products.user.username/follow_user', to: 'relationships#follow_user', as: :follow_user
  post ':username/unfollow_user', to: 'relationships#unfollow_user', as: :unfollow_user
  
  get 'products/feed'
  get 'users/show'

  resources :products
  resources :charges
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  root 'products#index'

  
end


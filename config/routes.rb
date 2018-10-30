Rails.application.routes.draw do
  devise_for :users
  root 'global#index'
  get 'global/index'

end

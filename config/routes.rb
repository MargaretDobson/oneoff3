Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  #root 'home#index'
=======
  root 'global#index'
  get 'global/index'

>>>>>>> db92f919dbe65d47ce115dffb01c22bf91ba0e0e
end

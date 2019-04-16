Rails.application.routes.draw do
  resources :sponsors
  resources :users
  get 'home/index'
  root 'home#index'
  resources :authors
  resources :posts


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

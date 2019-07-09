Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :miccroposts
  resources :users

  root 'miccroposts#index'
  # root 'application#hello'
end

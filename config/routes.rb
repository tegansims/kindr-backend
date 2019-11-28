Rails.application.routes.draw do
  resources :user_groups
  resources :picks
  resources :groups
  resources :users
  resources :names
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

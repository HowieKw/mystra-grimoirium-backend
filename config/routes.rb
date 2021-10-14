Rails.application.routes.draw do
  resources :grimoire_spells
  resources :spells
  resources :users
  resources :user_grimoires
  resources :grimoires
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/hello", to: "application#hello_world"
end

Rails.application.routes.draw do
  resources :grimoire_spells
  resources :spells
  resources :user_grimoires
  resources :grimoires
  resources :users

  get "/created_grimoires", to: "grimoires#created_grims"
  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end

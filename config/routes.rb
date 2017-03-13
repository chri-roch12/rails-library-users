Rails.application.routes.draw do

  root to: "users#index"

#users stuff
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "users/:id", to: "users#show", as: "user"

#sessions stuff
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

#libraries stuff
  get "/libraries", to: "libraries#index"

end

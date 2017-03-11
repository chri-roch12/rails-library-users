Rails.application.routes.draw do

  root to: "users#index"

  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "users/:id", to: "user#show", as: "user"

end

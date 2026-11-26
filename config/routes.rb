Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "sessions#new"
  get "/login", to: "sessions#new", as: :login
  post "/login", to: "sessions#create"
  get "/register", to: "registrations#new", as: :register
  post "/register", to: "registrations#create"
  delete "/logout", to: "sessions#destroy", as: :logout
  get "/dashboard", to: "pages#dashboard", as: :dashboard
end
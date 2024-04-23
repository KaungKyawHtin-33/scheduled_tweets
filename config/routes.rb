Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root to: "main#index"

  get "/about", to: "about#index"

  get "/password", to: "passwords#edit"
  patch "/password", to: "passwords#update"

  get "/sign_up", to: "registerations#new"
  post "/sign_up", to: "registerations#create"

  get "/sign_in", to: "sessions#new"
  post "/sign_in", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"

  # Defines the root path route ("/")
  # root "posts#index"
end

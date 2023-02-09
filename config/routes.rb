Rails.application.routes.draw do
  # get "password_resets/new"
  # get "password_resets/edit"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "static_pages#home"
  resources :users
  resources :microposts, only: [:index, :create, :destroy]

  # get "/home", to: "static_pages#home"
  get "/help", to: "static_pages#help"
  get "/contact", to: "static_pages#contact"
  get "/about", to: "static_pages#about"
  get "/sign-up", to: "users#sign_up"
  post "/sign-up", to: "users#create_sign_up"

  # login
  get "/login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # account activation
  resources :account_activations, only: [:edit]

  # reset password
  resources :password_resets, only: [:new, :create, :edit, :update]
end

Rails.application.routes.draw do
  get 'home', to:'static_pages#home'
  get 'help', to:'static_pages#help'
  get 'contact', to:'static_pages#contact'
  get 'about', to:'static_pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'users#index'
  resources :users
  resources :microposts
end

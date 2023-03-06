Rails.application.routes.draw do
  devise_for :users
  #resources :comments
  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root :to => "tasks#index"

  get "tasks", to: "tasks#index"
  #get "sign_up", to: "registrations#new"
  #post "sign_up", to: "registrations#create"
  delete "logout", to: "sessions#destroy"
end

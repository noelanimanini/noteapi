Rails.application.routes.draw do
  resources :notes
  resources :users, only: [:create]
  post 'login', to: "auth#create"
  post '/signup', to: 'users#create'
  get 'persist', to: "auth#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :likes
  resources :comments
  resources :posts
  resources :users, only: [:index, :show]

  post '/login', to: 'auth#login'
  get '/persist', to: 'auth#persist'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

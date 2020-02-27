Rails.application.routes.draw do
  resources :likes
  resources :comments
  resources :posts
  resources :users

  # post '/login', to: 'auth#login'
  # get '/persist', to: 'auth#persist'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

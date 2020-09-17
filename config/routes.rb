Rails.application.routes.draw do
  root 'welcome#home'
  resources :reviews
  resources :teas
  resources :users
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
end



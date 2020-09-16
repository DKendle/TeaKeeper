Rails.application.routes.draw do
  root 'welcome#home'
  resources :recipes
  resources :teas
  #resources :users
  get '/signup' , to: "users#new"
  post '/signup', to: "users#create"
end

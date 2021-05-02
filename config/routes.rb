Rails.application.routes.draw do

  root 'application#welcome'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  post '/logout', to: 'sessions#destroy'

  resources :genres
  resources :users, except: [:new] 
  resources :books

  

end

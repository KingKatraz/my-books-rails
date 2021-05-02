Rails.application.routes.draw do

  root 'application#welcome'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  post '/logout', to: 'sessions#destroy'

  get '/auth/:provider/callback', to: 'sessions#omniauth'

  
  resources :users 
  
  # only nested routes: index new create
  resources :genres do 
      resources :books, shallow: true
    end 

  resources :books, only: [:index, :new, :create]

end

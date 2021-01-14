Rails.application.routes.draw do
  resources :genres
  resources :users, except: [:new] 
  resources :books

  get '/signup', to: 'users#new'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

end

Rails.application.routes.draw do

  root 'static_pages#home'
  
  get '/help', to:'static_pages#help'

  get '/about', to:'static_pages#about'
  
  get '/contact', to:'static_pages#contact'
  
  get '/signup', to:'users#new'
  post '/signup', to:'users#create'

  get '/login', to:'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :account_activations, only: [:edit]
  
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  # get '/users', to:'users#index'
  # get '/users/1', to:'users#show'
  # get '/users/1/edit', to:'users#edit'
  # patch '/users/1', to:' users#update'
  # delete '/users/1', to:' users#destroy'
  
  # get '/users/new', to:'users#new'
  # post '/users', to:'users#create'

end

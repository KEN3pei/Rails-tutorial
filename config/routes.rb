Rails.application.routes.draw do

  root 'static_pages#home'
  
  get '/help', to:'static_pages#help'

  get '/about', to:'static_pages#about'
  
  get '/contact', to:'static_pages#contact'
  
  get '/signup', to:'users#new'
  post '/signup', to:'users#create'
  
  resources :users, only: [:index, :show]
  # get '/users', to:'users#index'
  # get '/users/1', to:'users#show'
  
  # post '/users', to:'users#create'
  # get '/users/new', to:'users#new'
  # get '/users/1/edit', to:'users#edit'
  # patch '/users/1', to:' users#update'
  # delete '/users/1', to:' users#destroy'

end

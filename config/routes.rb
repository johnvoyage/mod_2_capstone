Rails.application.routes.draw do
  resources :subactivities
  resources :activities
  resources :interests
  resources :users
  resources :choices

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #SESSIONS AUTH
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'



  ############
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

end

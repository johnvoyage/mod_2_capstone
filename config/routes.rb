Rails.application.routes.draw do
  resources :activities
  resources :interests
  resources :users

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/learning', to: 'interests#show'
end

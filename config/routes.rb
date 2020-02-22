Rails.application.routes.draw do

  resources :films, only: [:index, :show]
  # get "/films", to: 'films#index'
  # get '/films/:id', to: 'films#show', id: /\d/

  resources :characters, only: [:index, :show]
  # get '/characters/:id', to: 'characters#show', id: /\d/

  resources :planets, only: [:index, :show]
  # get '/planets/:id', to: 'planets#show', id: /\d/

  resources :races, only: [:index, :show]
  # get '/races/:id', to: 'races#show', id: /\d/

  root to: 'films#index'
  # get '/characters', to: 'characters#index'
  # get '/planets', to: 'planets#index'
  # get '/races', to: 'races#index'
end
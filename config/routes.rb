Rails.application.routes.draw do

  resources :films, only: [:index, :show]
  # get "/films", to: 'films#index'
  # get '/films/:id', to: 'films#show', id: /\d/

  resources :characters, only: [:index, :show] do
    collection do
      get 'c_search_results'
    end
  end
  # get '/characters/:id', to: 'characters#show', id: /\d/
  # get '/characters', to: 'characters#index'

  resources :planets, only: [:index, :show]
  # get '/planets/:id', to: 'planets#show', id: /\d/
  # get '/planets', to: 'planets#index'

  resources :races, only: [:index, :show]
  # get '/races/:id', to: 'races#show', id: /\d/
  # get '/races', to: 'races#index'

  get 'about', to: 'pages#about', as: 'about'

  root to: 'films#index'
end
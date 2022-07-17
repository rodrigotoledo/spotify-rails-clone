Rails.application.routes.draw do
  resources :playlists, only: :show
  resources :tracks, only: :show
  get 'login', to: 'sessions#login', as: :login
  get 'logout', to: 'sessions#logout', as: :logout
  get '/auth/spotify/callback', to: 'users#spotify'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end

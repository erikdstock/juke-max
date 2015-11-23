Rails.application.routes.draw do

  root                          to: 'application#index'
  get '/auth/spotify/callback', to: 'sessions#create'
  get '/sign_out',              to: 'sessions#destroy'

  resources :playlists
  # These should really be POSTs
  get '/playlists/:id/activate', as: 'activate_playlist', to: 'playlists#activate'
  get 'playlists/:id/deactivate', as: 'deactivate_playlist', to: 'playlists#deactivate'

  resources :users, only: [:show]

end
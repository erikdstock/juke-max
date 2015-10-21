Rails.application.routes.draw do

  root                          to: 'application#index'
  get '/auth/spotify/callback', to: 'sessions#create'
  get '/sign_out',              to: 'sessions#destroy'

end
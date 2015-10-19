Rails.application.routes.draw do

  root to: 'application#index'
  get '/auth/spotify/callback', to: 'users#spotify'

  

end

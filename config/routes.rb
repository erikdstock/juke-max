Rails.application.routes.draw do

  get '/auth/spotify/callback', to: 'users#spotify'

end

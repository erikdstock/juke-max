class UsersController < ApplicationController
	skip_before_action :authenticate_user!, only: [:spotify]
  
  def spotify
    spotify_params = request.env['omniauth.auth']
    user = User.from_omniauth(spotify_params)
   	session[:user_id] = user.id if user
    redirect_to :root
  end

end

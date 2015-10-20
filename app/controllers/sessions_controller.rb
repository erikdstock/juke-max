class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    spotify_params = request.env['omniauth.auth']
    user = User.from_omniauth(spotify_params)
    session[:user_id] = user.id if user
    redirect_to :root
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end

end
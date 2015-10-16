class UsersController < ApplicationController
  def spotify
    @user = RSpotify::User.new(request.env['omniauth.auth'])
    # Now you can access user's private data, create playlists and much more
  end
end

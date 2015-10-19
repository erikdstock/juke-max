class UsersController < ApplicationController
  
  def spotify
    this_user = RSpotify::User.new(request.env['omniauth.auth'])

    @user = User.find_or_create_by(spotify_id: this_user.id)
    # byebug

    # set user properties - RSpotify::Users can't save... :/

    begin
    	@user.image = this_user.images[0].url
    	@user.email = this_user.email
    	@user.profile_url = this_user.external_urls.spotify
    	@user.display_name = this_user.display_name 

    rescue => e
    	warn "Error setting user data: #{e}"
    ensure
    	@user.save
    end
    # Now you can access user's private data, create playlists and much more
    # woot
    redirect_to :root
  end

end

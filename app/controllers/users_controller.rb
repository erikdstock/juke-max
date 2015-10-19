class UsersController < ApplicationController
	skip_before_action :authenticate_user!, only: [:spotify]

  
  def spotify
  	puts "in the callback..."
    this_user = RSpotify::User.new(request.env['omniauth.auth'])

    @user = User.find_or_create_by(spotify_id: this_user.id)

    # Better way to refactor this like with a special spotify_params method perhaps? This error rescue might not be necessary.
    begin
    	@user.image = this_user.images[0].url
    	@user.email = this_user.email
    	@user.profile_url = this_user.external_urls.spotify
    	@user.display_name = this_user.display_name 
    rescue => e
    	warn "Error setting user data: #{e}"
    ensure
    	if @user.save
    		# session[:user_id] = @user.id
    	else
    		flash[:alert] = "You didn't sign in right :/"
    	end
    end
   	session[:user_id] = @user.id
   	p session
    redirect_to :root
  end



end

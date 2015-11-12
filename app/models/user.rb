class User < ActiveRecord::Base
  has_many :playlists
  
  def self.from_omniauth(params)
    spotify_user = RSpotify::User.new(params)
    user = where(spotify_id: spotify_user.id).first_or_create
    user.refresh_fields(params)
    return user
  end

  def refresh_fields(params)
    spotify_user = RSpotify::User.new(params)
    byebug
    self.image = spotify_user.images[0].url if spotify_user.images[0]
    self.email = spotify_user.email
    self.profile_url = spotify_user.external_urls.spotify if spotify_user.external_urls
    self.display_name = spotify_user.display_name

    # unsure of best way to use this... would probably be better to store the user's actual token/creds
    self.spotify_hash = spotify_user.to_hash
    save
  end

  # find seems to poll spotify every time, returns full creds. possibly could use only the necessary values from the spotify hash to similar effect, but can't use string hash from db
  def rspotify_user
    @_rspotify_user ||= RSpotify::User.find(spotify_id)
  end


  ## created this as a way to filter jukepro-branded playlists but then decided it is too hacky.
  # def juke_pro_playlists
  #   things = rspotify_user.playlists
  #   # byebug
  #   things.select do |playlist|
  #     playlist.name.match /^__JP__/
  #   end
  # end

 

end

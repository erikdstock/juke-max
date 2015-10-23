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
    self.image = spotify_user.images[0].url if spotify_user.images[0]
    self.email = spotify_user.email
    self.profile_url = spotify_user.external_urls.spotify
    self.display_name = spotify_user.display_name
    self.spotify_hash = spotify_user.to_hash
    save
  end
end

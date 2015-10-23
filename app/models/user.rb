class User < ActiveRecord::Base
  has_many :playlists
  
  def self.from_omniauth(spotify_params)
    spotify_user = RSpotify::User.new(spotify_params)
    where(spotify_id: spotify_user.id).first_or_create do |user|
      user.image = spotify_user.images[0].url
      user.email = spotify_user.email
      user.profile_url = spotify_user.external_urls.spotify
      user.display_name = spotify_user.display_name
      user.spotify_hash = spotify_user.to_hash
    end
  end
end

class User < ActiveRecord::Base
  has_many :playlists
  
  def self.from_omniauth(params)
    spotify_user = RSpotify::User.new(params)
    user = where(spotify_id: spotify_user.id).first_or_create
    user.refresh_fields(params)
    puts spotify_user.playlists
    return user
  end

  def refresh_fields(params)
    spotify_user = RSpotify::User.new(params)
    self.image = spotify_user.images[0].url if spotify_user.images[0]
    self.email = spotify_user.email
    self.profile_url = spotify_user.external_urls.spotify
    self.display_name = spotify_user.display_name

    # unsure of best way to use this
    self.spotify_hash = spotify_user.to_hash
    save
  end

  def spotify_user
    @_spotify_user ||= RSpotify::User.find(spotify_id)
  end

  # don't know if we'll ever need this or if it will work but it's cute. would be a good candidate for unit testing if we do need it
  # edit - this doesn't work
  def spotify_hash_from_string
    json_ready_string = read_attribute(:spotify_hash).gsub('=>', ':').gsub('nil', 'null')
    JSON.parse(json_ready_string)
  end

end

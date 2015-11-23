# do we need this?
class AddSpotifyHashToUsersAndPlaylists < ActiveRecord::Migration
  def change
    add_column :users, :spotify_hash, :text
    add_column :playlists, :spotify_hash, :text
  end
end

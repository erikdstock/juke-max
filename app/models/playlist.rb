class Playlist < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  before_create :spotify_create

  def spotify_create
    self.user.spotify.create_playlist!(name)
  end
end
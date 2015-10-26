class Playlist < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  before_create :spotify_create

  def spotify_create
    user.spotify_user.create_playlist!(name)
  end
end
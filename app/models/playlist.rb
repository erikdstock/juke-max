class Playlist < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  before_create :spotify_create

  def spotify_create
    user.rspotify_user.create_playlist!(name)
  end

  private

  ### Not really needed. was used in place of name for #spotify_create above. seems unneccessary for now but did make me realize we are duplicating a lot of rspotify's work.
  # def brand_name!
  # 	"__JP__#{name}"
  # end



end
class Playlist < ActiveRecord::Base
  belongs_to :user
  
  validates :name, presence: true
  validates :link_name, uniqueness: true,
                        format: /\A[\w\d\s]{0,24}\z/,
                        allow_nil: true
  
  before_create :spotify_create

  def spotify_create
    params = user.rspotify.create_playlist!(name)
    self.spotify_hash = params.to_json
    self.spotify_id = params.id
  end

  def spotify_hash
    self[:spotify_hash] ? JSON.parse(self[:spotify_hash]) : nil
  end

  def active?
    active
  end

  def activate!
    update_attributes(active: true)
  end

  def deactivate!
    update_attributes(active: false)
  end

  def toggle_active!
    self.active = !active
    save
  end

  def rspotify
    @_rspotify_playlist ||= RSpotify::Playlist.find(user.spotify_id, self.spotify_id)
  end


  private

  ### Not really needed. was used in place of name for #spotify_create above. seems unneccessary for now but did make me realize we are duplicating a lot of rspotify's work.
  # def brand_name!
  # 	"__JP__#{name}"
  # end



end
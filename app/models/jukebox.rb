class Jukebox < ActiveRecord::Base
  belongs_to :playlist
  belongs_to :user, through: :playlist
  

end


=begin
t.integer  "playlist_id"
    t.integer  "user_id"
    t.boolean  "active",      default: false
    t.string   "name"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",  
=end

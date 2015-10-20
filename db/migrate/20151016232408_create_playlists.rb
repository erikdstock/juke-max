class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      
      t.belongs_to :user
      
      # whatever spotify's foreign key would be- we'll need to wrap this up w some kind of api call
      t.integer :playlist_id

      t.timestamps null: false
    end
  end
end

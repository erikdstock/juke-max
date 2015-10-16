class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.belongs_to :user
      t.integer :playlist_id

      t.timestamps
    end
  end
end

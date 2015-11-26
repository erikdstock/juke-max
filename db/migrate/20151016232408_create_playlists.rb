class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      
      t.belongs_to :user
      t.string :spotify_id
      t.boolean :active, default: false
      t.string :name
      t.string :link_name

      t.timestamps null: false
    end
  end
end

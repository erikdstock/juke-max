class CreateJukeboxes < ActiveRecord::Migration
  def change
    create_table :jukeboxes do |t|
      t.belongs_to :playlist
      t.belongs_to :user
      t.boolean :active, default: false
      
      t.string :name

      t.timestamps null: false
    end
  end
end

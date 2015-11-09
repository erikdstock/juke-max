class CreateJukeboxes < ActiveRecord::Migration
  def change
    create_table :jukeboxes do |t|

      t.timestamps null: false
    end
  end
end

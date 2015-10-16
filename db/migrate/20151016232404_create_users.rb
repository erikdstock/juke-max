class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
  # all these values are set from the omniauth creds
      
      # should be unique or set as primary key - see this link: http://ruby-journal.com/how-to-override-default-primary-key-id-in-rails/ but unclear whether this is up to date
      t.string :spotify_id

      t.string :display_name
      t.string :email
      t.string :profile_url

      
      # this is actually an array, should be parsed/separated
      t.string :image



      t.timestamps null: false
    end
  end
end

require 'test_helper'
include RSpotifyStubHelper

class PlaylistTest < ActiveSupport::TestCase
  test "playlist has a name" do
    assert_equal(playlists(:basic).name, "The Jams")
  end



  test "#party_path returns a nice link-friendly hyphenated string" do 
    test_list = playlists(:basic)
    refute_equal test_list.party_path, test_list[:link_name]
  end

  test "#link_name returns nil if there is no link_name" do 
    test_list = playlists(:nameless)
    assert_nil test_list.link_name
  end

  test "#spotify_hash returns a hash if valid JSON string is stored in object" do 
      test_list = playlists(:basic)
      test_list.spotify_hash = spotify_hash_for :playlist
      assert_instance_of Hash, test_list.spotify_hash
  end


end

require 'test_helper'

class PlaylistTest < ActiveSupport::TestCase
  test "playlist has a name" do
    assert_equal(playlists(:basic).name, "The Jams")
  end



  test "#link_name returns a nice link-friendly hyphenated string" do 
    test_list = playlists(:basic)
    refute_equal test_list.link_name, test_list[:link_name]
  end

  test "#link_name returns nil if there is no link_name" do 
    test_list = playlists(:nameless)
    assert_nil test_list.link_name
  end

  test "#spotify_hash returns a hash if valid JSON string is stored in object" do 
    test_list = playlists(:basic)
    refute_equal test_list.link_name, test_list[:link_name]
  end

  test "#spotify_hash returns nil if there is no link_name" do 
    test_list = playlists(:nameless)
    assert_nil test_list.link_name
  end


end

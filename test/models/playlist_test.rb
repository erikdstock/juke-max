require 'test_helper'

class PlaylistTest < ActiveSupport::TestCase
  test "playlist has a name" do
    assert_equal(playlists(:basic).name, "The Jams")
  end
end

require 'test_helper'
include RSpotifyStubHelper

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "user has a name - a pointless test" do
  	assert_equal(users(:grace).display_name, "Grace Hopper")
  end

  test "#spotify_hash returns a hash if valid JSON string is stored in object" do 
    test_user = users(:grace)
    test_user.spotify_hash = spotify_hash_for :grace
    assert_instance_of Hash, test_user.spotify_hash
  end

  # test "#spotify_hash returns nil if there is no link_name" do 
  #   test_list = playlists(:nameless)
  #   assert_nil test_list.link_name
  # end


end

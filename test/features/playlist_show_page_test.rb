require 'test_helper'
require_relative "../support/rspotify_stub_helper"
include RSpotifyStubHelper

class PlaylistShowPageTest < Capybara::Rails::TestCase
  # SOME_TRACKS = [{
  #     artist: "Michael Jordan",
  #     name: "Space Jam"
  #     },{
  #     artist: "Michael Jackson",
  #     name: "Scream"
  #     },{
  #     artist: "Will Smith",
  #     name: "Men in Black"
  #     }]
  
  before do
    login_with_oauth(:grace)
    rspotify_stub_playlists
    rspotify_stub_tracks
  end

  test "user clicks a playlist to see its show page with track listing" do
    # Playlist.stub :tracks, RSpotifyStubHelper::Examples::TRACKS do
        click_link "The Jams"
        page.must_have_content "The Jams"
        page.must_have_content "Track List"
        page.must_have_content "0 Songs"
      # end #trying to stub at the api level
  end


end

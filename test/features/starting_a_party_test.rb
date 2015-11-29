require 'test_helper'
require_relative "../support/rspotify_stub_helper"

include RSpotifyStubHelper

feature "Throwing a party" do
  before do
    login_with_oauth(:grace)
  end

  scenario "User creates a new playlist from the dashboard" do
    name = PLAYLIST_PARAMS['name']

    click_link "New playlist"
    fill_in "Name", with: name

    stub_playlist  do
      click_on "Submit"
    end

    page.must_have_content(name)  
  end

  scenario "navigate to playlist show page from the dashboard and activate" do
    click_link "The Jams"
    click_on "Activate"
    page.must_have_content("Party Link: at/#{playlists(:nameless).link_name}")
  end

  scenario "User tries to activate a playlist with no link_name" do
    click_link "Nameless Jams"
    click_on "Activate"
    page.must_have_content("You need to name your party before you can activate this playlist")
  end

end

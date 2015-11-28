require 'test_helper'
require_relative "../support/rspotify_stub_helper"

include RSpotifyStubHelper

feature "Throwing a party" do
  before do
    login_with_oauth(:grace)
  end

  scenario "User creates a new playlist from the dashboard" do
    click_link "New playlist"
    fill_in "name", with: "Space Jams"
    RSpotify::Playlist.stub :find, RSpotify::Playlist.new(PLAYLIST_PARAMS) do
      click_on "Submit"
    end
    save_and_open_page
    page.must_have_content("Space Jams")  
  end

  scenario "navigate to playlist show page from the dashboard and activate- this test is all jacked up. i think it needs selenium (js: true) to find the materialize.css checkbox" do
    skip
    click_link "The Jams"
    page.must_have_content "The Jams"
    save_and_open_page
    find(".collection-item input").click
    puts "need a test here - and a working checkbox"
  end

  scenario "User can activate a playlist via a checkbox on the show page" do
    
  end

end

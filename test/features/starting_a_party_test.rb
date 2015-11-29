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

    save_and_open_page
    page.must_have_content(name)  
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

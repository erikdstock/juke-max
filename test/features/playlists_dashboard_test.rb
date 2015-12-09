require "test_helper"
require_relative "../support/rspotify_stub_helper"
# require_relative "../support/features_helper"

include RSpotifyStubHelper


feature "Logging in" do

  scenario "visiting the home page" do
    visit root_path
    page.must_have_content "Juke Pro"
  end

  scenario "logging in via the login button" do
    visit root_path
    mock_oauth(:grace)

    RSpotify::User.stub :find, RSpotify::User.new(PARAMS[:users][:grace]) do
      page.find("#top-nav-login").click
    end
    page.must_have_content("Grace Hopper")
  end

  scenario "User sees their dashboard after login" do
    login_with_oauth(:grace)
    page.must_have_content("Grace Hopper")
  end

  scenario "User sees a list of their playlists" do
    login_with_oauth(:grace)
    page.must_have_content("Playlists")
    # save_and_open_page
    page.all(".playlist").length.must_equal(users(:grace).playlists.length)
  end

end
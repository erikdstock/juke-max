require "test_helper"
require_relative "../support/rspotify_stub_helper"
require_relative "../support/features_helper"

include RSpotifyStubHelper

class DashboardTest < Capybara::Rails::TestCase
  test "sanity" do
    visit root_path
    assert_content page, "Juke Pro"
    # refute_content page, "Goobye All!"
  end

  test "User is redirected to their dashboard after login" do 
    login_with_oauth(:grace)
    assert page.has_content?("Grace Hopper")
  end

  test "User sees a list of all their playlists" do 
    login_with_oauth(:grace)
    assert page.has_content?("Playlists")
  end
end

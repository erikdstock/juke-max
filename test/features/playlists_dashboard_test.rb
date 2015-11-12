require "test_helper"
require_relative "../support/integration_spec_helper"
require_relative "../support/features_helper"

include IntegrationSpecHelper

class LoginDashboardTest < Capybara::Rails::TestCase
  test "sanity" do
    visit root_path
    assert_content page, "Juke Pro"
    # refute_content page, "Goobye All!"
  end

  test "visit dashboard after login" do 
    RSpotify::User.stub :find, DUMMY_USER do
        login_with_oauth
        assert page.has_content?("Playlists")
    end
  end
end

module IntegrationSpecHelper
    RSPOTIFY_PARAMS = {
      :id => 'tommy2test',
      :display_name => "Test User",
      :email => 'tommy@test.com'
    }

    DUMMY_USER = RSpotify::User.new(RSPOTIFY_PARAMS)

  def login_with_oauth(service = :spotify)
    visit "/auth/#{service}"
  end
  
end

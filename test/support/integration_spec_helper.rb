module IntegrationSpecHelper
    RSPOTIFY_PARAMS = {
      :id => 'tommy2test',
      :display_name => "Test User",
      :email => 'tommy@test.com',
      :images => [{
        "height"=>nil,
        "url"=>"https://scontent.xx.fbcdn.net/hprofile-xtp1/v/t1.0-1/p200x200/12109254_10153317472678737_2420135860526267916_n.jpg?oh=203c987de73a00ee3239cf4c1a377261&oe=56B0D160",
        "width"=>nil
        }],
      :birthdate => nil,
      :country => nil,
      :uri => nil,
      :external_urls => {"spotify"=>"https://open.spotify.com/user/erik"}
    }

    DUMMY_USER = RSpotify::User.new(RSPOTIFY_PARAMS)

  def login_with_oauth(service = :spotify)
    visit "/auth/#{service}"
  end

end

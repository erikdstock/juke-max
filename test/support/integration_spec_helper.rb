module IntegrationSpecHelper
    RSPOTIFY_PARAMS = {
      :refresh_token => "AQCcIUDrh9CJuKnNgenS1lNlO95nGkNZVQbqHB4QgS7g-jcG8tAwkdn14kjMHMB-h0MMlJ3Y6pQ7RxD6tU8Qc2rtpNfqkpm73ZduDwq0aSjwFktSxoFDkWixyWeHfhmq_ts",
      :token => "BQAVIVJl4DRWezsup9HtB6FSi7oyi1wz_LNLtZq4TTFWU5qvjVDsqUvhJPINkta5bb20f_KHwzr4_lxohvNGN1tAyCliel5-aL1ou9jiaOwr3TZiiwRH1DWst_y_MsgSa2QHKrVohsu0oSR2Giwq0zwLv347mZnQbKy1GsafX1JW6USFawPJ9H0kXPtwEX6TGwZmeL77z7PJdoU",
      :info => {
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
    }

    DUMMY_USER = RSpotify::User.new(RSPOTIFY_PARAMS)

  def login_with_oauth(service = :spotify)
    visit "/auth/#{service}"
  end

end

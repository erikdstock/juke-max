require_relative "./rspotify_json_examples"

module RSpotifyStubHelper

  # Rspotify's Omniauth returns something from this hash
    PARAMS = {
      :user => {
          :refresh_token => "AQCcIUDrh9CJuKnNgenS1lNlO95nGkNZVQbqHB4QgS7g-jcG8tAwkdn14kjMHMB-h0MMlJ3Y6pQ7RxD6tU8Qc2rtpNfqkpm73ZduDwq0aSjwFktSxoFDkWixyWeHfhmq_ts",
          :token => "BQAVIVJl4DRWezsup9HtB6FSi7oyi1wz_LNLtZq4TTFWU5qvjVDsqUvhJPINkta5bb20f_KHwzr4_lxohvNGN1tAyCliel5-aL1ou9jiaOwr3TZiiwRH1DWst_y_MsgSa2QHKrVohsu0oSR2Giwq0zwLv347mZnQbKy1GsafX1JW6USFawPJ9H0kXPtwEX6TGwZmeL77z7PJdoU",
          :info => {
            :id => 'discgrace',
            :display_name => "Grace Hopper",
            :email => 'test@test.com',
            :images => [{
              "height"=>nil,
              "url"=>"https://scontent.xx.fbcdn.net/hprofile-xtp1/v/t1.0-1/p200x200/12109254_10153317472678737_2420135860526267916_n.jpg?oh=203c987de73a00ee3239cf4c1a377261&oe=56B0D160",
              "width"=>nil
            }],
            :birthdate => nil,
            :country => nil,
            :uri => nil,
            :external_urls => {
              "spotify"=>"https://open.spotify.com/user/erik"
            }
          }
      },
      :playlist => {
        "collaborative"=>false,
        "description"=>nil,
        "followers"=>{
            "href"=>nil, 
            "total"=>0
          },
        "images"=>[],
        "name"=>"Space Jams",
        "public"=>true,
        "snapshot_id"=>"2BfKsGBoCiEZiV96mQcDGXVQ4NuU8tvybnDbDhX5wQAeHS0ZmtyYk1K6jV1EW1rY", 
        "total"=>0, 
        "owner"=>{
          "birthdate"=>nil,
          "country"=>nil,
          "display_name"=>nil,
          "email"=>nil,
          "followers"=>nil,
          "images"=>nil,
          "product"=>nil, 
          "external_urls"=>{"spotify"=>"http://open.spotify.com/user/discgrace"},
          "href"=>"https://api.spotify.com/v1/users/discgrace",
          "id"=>"discgrace", 
          "type"=>"user",
          "uri"=>"spotify:user:discgrace"
        },
        "tracks" => {
          "total" => 0
        },
        "tracks_cache"=>[],
        "tracks_added_at"=>{},
        "tracks_added_by"=>{},
        "tracks_is_local"=>{},
        "external_urls"=>{
          "spotify"=>"http://open.spotify.com/user/discgrace/playlist/2Vsiq5g9YRAX9lK6P1ejOE"
          }, 
        "href"=>"https://api.spotify.com/v1/users/discgrace/playlists/2Vsiq5g9YRAX9lK6P1ejOE",
        "id"=>"2Vsiq5g9YRAX9lK6P1ejOE",
        "type"=>"playlist",
        "uri"=>"spotify:user:discgrace:playlist:2Vsiq5g9YRAX9lK6P1ejOE",
        "path"=>"users/discgrace/playlists/2Vsiq5g9YRAX9lK6P1ejOE"
      },
      :tracks => [{
        artist: "Michael Jordan",
        name: "Space Jam"
        },{
        artist: "Michael Jackson",
        name: "Scream"
        },{
        artist: "Will Smith",
        name: "Men in Black"
      }]
    }

  def spotify_json_for(whom)
    return PARAMS[whom].to_json
  end
  
  # we need to mock both oauth and rspotify#find for login
  def login_with_oauth(user = :grace)
    mock_oauth(user)

    RSpotify::User.stub :find, RSpotify::User.new(PARAMS[:user]) do
      visit "/auth/spotify"
    end
  end

  def rspotify_stub_user
    stub_request(:get, /api.spotify.com\/v1\/users\/[\w\d]+/).
          with(:headers => {'Accept'=>'*/*; q=0.5, application/xml', 'Accept-Encoding'=>'gzip, deflate', 'User-Agent'=>'Ruby'}).
          to_return(:status => 200, :body => ApiResponses::USER.to_json, :headers => {})
  end

  def rspotify_stub_playlists
    stub_request(:get, /api.spotify.com\/v1\/users\/[\w\d]+\/playlists/).
          with(:headers => {'Accept'=>'*/*; q=0.5, application/xml', 'Accept-Encoding'=>'gzip, deflate', 'User-Agent'=>'Ruby'}).
          to_return(:status => 200, :body => [ApiResponses::PLAYLIST].to_json, :headers => {})
          
    stub_request(:get, /api.spotify.com\/v1\/users\/[\w\d]+\/playlists\/[\w\d]+/).
          with(:headers => {'Accept'=>'*/*; q=0.5, application/xml', 'Accept-Encoding'=>'gzip, deflate', 'User-Agent'=>'Ruby'}).
          to_return(:status => 200, :body => ApiResponses::PLAYLIST.to_json, :headers => {})
  end

  def rspotify_stub_create_playlist
    # binding.pry
    stub_request(:post, "https://api.spotify.com/v1/users/discgrace/playlists/").
      with(:headers => {'Accept'=>'*/*; q=0.5, application/xml', 'Accept-Encoding'=>'gzip, deflate', 'User-Agent'=>'Ruby'}).
      to_return(:status => 200, :body => ApiResponses::CREATE_PLAYLIST.to_json, :headers => {})
  end

  def rspotify_stub_playlist(playlist: :space_jams)
    stub_request(:get, /api.spotify.com\/v1\/users\/[\w\d]+\/playlists\/[\w\d]+/).
          with(:headers => {'Accept'=>'*/*; q=0.5, application/xml', 'Accept-Encoding'=>'gzip, deflate', 'User-Agent'=>'Ruby'}).
          to_return(:status => 200, :body => ApiResponses::PLAYLIST.to_json, :headers => {})
  end

  def rspotify_stub_tracks
    stub_request(:get, /api.spotify.com\/v1\/users\/[\w\d]+\/playlists\/[\w\d]+/).
          with(:headers => {'Accept'=>'*/*; q=0.5, application/xml', 'Accept-Encoding'=>'gzip, deflate', 'User-Agent'=>'Ruby'}).
          to_return(:status => 200, :body => ApiResponses::TRACKS.to_json, :headers => {})
  end


  def stub_create_playlist
    RSpotify::User.stub_any_instance :create_playlist!, RSpotify::Playlist.new(PARAMS[:playlist]) do
      RSpotify::User.stub :find, RSpotify::User.new(PARAMS[:users][:grace]) do
        yield
      end
    end
  end


  def mock_oauth(user)
    OmniAuth.config.add_mock :spotify, RSpotifyStubHelper::PARAMS[:user]
  end

  # def user_stub(user)
  #   RSpotify::User.new(PARAMS[:user][user])
  # end


end

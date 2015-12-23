module RSpotifyStubHelper
  module ApiResponses
    # discgrace is not a real spotify user; other examples drawn from spotify api explorer https://developer.spotify.com/web-api/console/get-playlist-tracks/#complete
    USER = {
      "birthdate" => "1934-02-10",
      "country" => "US",
      "display_name" => "Grace Hopper",
      "email" => "spaceracegraceface@gmail.com",
      "external_urls" => {
        "spotify" => "https://open.spotify.com/user/discgrace"
      },
      "followers" => {
        "href" => nil,
        "total" => 24
      },
      "href" => "https://api.spotify.com/v1/users/discgrace",
      "id" => "discgrace",
      "images" => [ {
        "height" => nil,
        "url" => "https://scontent.xx.fbcdn.net/hprofile-xla1/v/t1.0-1/s200x200/10670116_10100577919701395_8623621170713730142_n.jpg?oh=13a860be1add9b34e87947ee21c17ee1&oe=571DCF6B",
        "width" => nil
      } ],
      "product" => "premium",
      "type" => "user",
      "uri" => "spotify:user:discgrace"
    }

    PLAYLIST = {
      "collaborative" => false,
      "description" => nil,
      "external_urls" => {
        "spotify" => "http://open.spotify.com/user/discgrace/playlist/4ACyFCOb3QgIBK44Jk3xuX"
      },
      "followers" => {
        "href" => nil,
        "total" => 0
      },
      "href" => "https://api.spotify.com/v1/users/discgrace/playlists/4ACyFCOb3QgIBK44Jk3xuX",
      "id" => "4ACyFCOb3QgIBK44Jk3xuX",
      "images" => [ {
        "height" => 640,
        "url" => "https://i.scdn.co/image/b9fdf54bf5d51f4172341e994fe67218e1a60869",
        "width" => 640
      } ],
      "name" => "ecode",
      "owner" => {
        "external_urls" => {
          "spotify" => "http://open.spotify.com/user/discgrace"
        },
        "href" => "https://api.spotify.com/v1/users/discgrace",
        "id" => "discgrace",
        "type" => "user",
        "uri" => "spotify:user:discgrace"
      },
      "public" => false,
      "snapshot_id" => "Xe0UoNYS2ROb8zwP1n+DSQxk8qthWQuPNMZacPVy/4ARwI7EEzxlBmnz4mZlAqQf",
      "tracks" => {
        "href" => "https://api.spotify.com/v1/users/discgrace/playlists/4ACyFCOb3QgIBK44Jk3xuX/tracks?offset=0&limit=100&market=ES",
        "items" => [ {
          "added_at" => "2015-12-16T15:52:05Z",
          "added_by" => {
            "external_urls" => {
              "spotify" => "http://open.spotify.com/user/discgrace"
            },
            "href" => "https://api.spotify.com/v1/users/discgrace",
            "id" => "discgrace",
            "type" => "user",
            "uri" => "spotify:user:discgrace"
          },
          "is_local" => false,
          "track" => {
            "album" => {
              "album_type" => "album",
              "external_urls" => {
                "spotify" => "https://open.spotify.com/album/05TgJCRkXPcu4KQP27bFGb"
              },
              "href" => "https://api.spotify.com/v1/albums/05TgJCRkXPcu4KQP27bFGb",
              "id" => "05TgJCRkXPcu4KQP27bFGb",
              "images" => [ {
                "height" => 640,
                "url" => "https://i.scdn.co/image/b9fdf54bf5d51f4172341e994fe67218e1a60869",
                "width" => 640
              }, {
                "height" => 300,
                "url" => "https://i.scdn.co/image/7edb48ff97f573120ad2d39840141231dc0dd465",
                "width" => 300
              }, {
                "height" => 64,
                "url" => "https://i.scdn.co/image/4c6609a056051a36cd955089a9f17d3b8b63ae72",
                "width" => 64
              } ],
              "name" => "Like Dust Of The Balance",
              "type" => "album",
              "uri" => "spotify:album:05TgJCRkXPcu4KQP27bFGb"
            },
            "artists" => [ {
              "external_urls" => {
                "spotify" => "https://open.spotify.com/artist/0OmHDBh5styCXDWKwz58Ts"
              },
              "href" => "https://api.spotify.com/v1/artists/0OmHDBh5styCXDWKwz58Ts",
              "id" => "0OmHDBh5styCXDWKwz58Ts",
              "name" => "Ochre",
              "type" => "artist",
              "uri" => "spotify:artist:0OmHDBh5styCXDWKwz58Ts"
            } ],
            "disc_number" => 1,
            "duration_ms" => 333000,
            "explicit" => false,
            "external_ids" => {
              "isrc" => "GBGLF0904805"
            },
            "external_urls" => {
              "spotify" => "https://open.spotify.com/track/3F8qCEdATN7Wtf0uSwB7xP"
            },
            "href" => "https://api.spotify.com/v1/tracks/3F8qCEdATN7Wtf0uSwB7xP",
            "id" => "3F8qCEdATN7Wtf0uSwB7xP",
            "is_playable" => true,
            "linked_from" => {
              "external_urls" => {
                "spotify" => "https://open.spotify.com/track/1zTa1h5PG6m1lOycNKYDW9"
              },
              "href" => "https://api.spotify.com/v1/tracks/1zTa1h5PG6m1lOycNKYDW9",
              "id" => "1zTa1h5PG6m1lOycNKYDW9",
              "type" => "track",
              "uri" => "spotify:track:1zTa1h5PG6m1lOycNKYDW9"
            },
            "name" => "Napolese",
            "popularity" => 30,
            "preview_url" => "https://p.scdn.co/mp3-preview/8c1f09bf87bd00099326fb51aece9af67101b894",
            "track_number" => 5,
            "type" => "track",
            "uri" => "spotify:track:3F8qCEdATN7Wtf0uSwB7xP"
          }
        } ],
        "limit" => 100,
        "next" => nil,
        "offset" => 0,
        "previous" => nil,
        "total" => 1
      },
      "type" => "playlist",
      "uri" => "spotify:user:discgrace:playlist:4ACyFCOb3QgIBK44Jk3xuX"
    }

    CREATE_PLAYLIST = {
      "collaborative" => false,
      "description" => nil,
      "external_urls" => {
        "spotify" => "http://open.spotify.com/user/discgrace/playlist/35YvYGiJpQrI5y3WAO94vS"
      },
      "followers" => {
        "href" => nil,
        "total" => 0
      },
      "href" => "https://api.spotify.com/v1/users/discgrace/playlists/35YvYGiJpQrI5y3WAO94vS",
      "id" => "35YvYGiJpQrI5y3WAO94vS",
      "images" => [ ],
      "name" => "Space Jams",
      "owner" => {
        "external_urls" => {
          "spotify" => "http://open.spotify.com/user/discgrace"
        },
        "href" => "https://api.spotify.com/v1/users/discgrace",
        "id" => "discgrace",
        "type" => "user",
        "uri" => "spotify:user:discgrace"
      },
      "public" => false,
      "snapshot_id" => "ayp/ZDyFNEBBILjOdzW5ldHE1z71jsw1YF6vprNve9J/Vqpx7Q0mX4R0G9nQSo9W",
      "tracks" => {
        "href" => "https://api.spotify.com/v1/users/discgrace/playlists/35YvYGiJpQrI5y3WAO94vS/tracks",
        "items" => [ ],
        "limit" => 100,
        "next" => nil,
        "offset" => 0,
        "previous" => nil,
        "total" => 0
      },
      "type" => "playlist",
      "uri" => "spotify:user:discgrace:playlist:35YvYGiJpQrI5y3WAO94vS"
    }.to_json

    TRACKS = {
      "href" => "https://api.spotify.com/v1/users/discgrace/playlists/4ACyFCOb3QgIBK44Jk3xuX/tracks?offset=0&limit=100&market=ES",
      "items" => [ {
        "added_at" => "2015-12-16T15:52:05Z",
        "added_by" => {
          "external_urls" => {
            "spotify" => "http://open.spotify.com/user/discgrace"
          },
          "href" => "https://api.spotify.com/v1/users/discgrace",
          "id" => "discgrace",
          "type" => "user",
          "uri" => "spotify:user:discgrace"
        },
        "is_local" => false,
        "track" => {
          "album" => {
            "album_type" => "album",
            "external_urls" => {
              "spotify" => "https://open.spotify.com/album/05TgJCRkXPcu4KQP27bFGb"
            },
            "href" => "https://api.spotify.com/v1/albums/05TgJCRkXPcu4KQP27bFGb",
            "id" => "05TgJCRkXPcu4KQP27bFGb",
            "images" => [ {
              "height" => 640,
              "url" => "https://i.scdn.co/image/b9fdf54bf5d51f4172341e994fe67218e1a60869",
              "width" => 640
            }, {
              "height" => 300,
              "url" => "https://i.scdn.co/image/7edb48ff97f573120ad2d39840141231dc0dd465",
              "width" => 300
            }, {
              "height" => 64,
              "url" => "https://i.scdn.co/image/4c6609a056051a36cd955089a9f17d3b8b63ae72",
              "width" => 64
            } ],
            "name" => "Like Dust Of The Balance",
            "type" => "album",
            "uri" => "spotify:album:05TgJCRkXPcu4KQP27bFGb"
          },
          "artists" => [ {
            "external_urls" => {
              "spotify" => "https://open.spotify.com/artist/0OmHDBh5styCXDWKwz58Ts"
            },
            "href" => "https://api.spotify.com/v1/artists/0OmHDBh5styCXDWKwz58Ts",
            "id" => "0OmHDBh5styCXDWKwz58Ts",
            "name" => "Ochre",
            "type" => "artist",
            "uri" => "spotify:artist:0OmHDBh5styCXDWKwz58Ts"
          } ],
          "disc_number" => 1,
          "duration_ms" => 333000,
          "explicit" => false,
          "external_ids" => {
            "isrc" => "GBGLF0904805"
          },
          "external_urls" => {
            "spotify" => "https://open.spotify.com/track/3F8qCEdATN7Wtf0uSwB7xP"
          },
          "href" => "https://api.spotify.com/v1/tracks/3F8qCEdATN7Wtf0uSwB7xP",
          "id" => "3F8qCEdATN7Wtf0uSwB7xP",
          "is_playable" => true,
          "linked_from" => {
            "external_urls" => {
              "spotify" => "https://open.spotify.com/track/1zTa1h5PG6m1lOycNKYDW9"
            },
            "href" => "https://api.spotify.com/v1/tracks/1zTa1h5PG6m1lOycNKYDW9",
            "id" => "1zTa1h5PG6m1lOycNKYDW9",
            "type" => "track",
            "uri" => "spotify:track:1zTa1h5PG6m1lOycNKYDW9"
          },
          "name" => "Napolese",
          "popularity" => 30,
          "preview_url" => "https://p.scdn.co/mp3-preview/8c1f09bf87bd00099326fb51aece9af67101b894",
          "track_number" => 5,
          "type" => "track",
          "uri" => "spotify:track:3F8qCEdATN7Wtf0uSwB7xP"
        }
      } ],
      "limit" => 100,
      "next" => nil,
      "offset" => 0,
      "previous" => nil,
      "total" => 1
    }
  end
end
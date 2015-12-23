require "codeclimate-test-reporter"
require "minitest/reporters"

CodeClimate::TestReporter.start
Minitest::Reporters.use!

# Stub APIs and shut down external network requests
require 'webmock/minitest'
WebMock.disable_net_connect!(allow_localhost: true)
WebMock.stub_request(:post, "https://#{ENV["spotify_client_id"]}:#{ENV["spotify_secret"]}@accounts.spotify.com/api/token").
  with(:body => {"grant_type"=>"client_credentials"},
       :headers => {'Accept'=>'*/*; q=0.5, application/xml', 'Accept-Encoding'=>'gzip, deflate', 'Content-Length'=>'29', 'Content-Type'=>'application/x-www-form-urlencoded', 'User-Agent'=>'Ruby'}).
  to_return(:status => 200, :body => {}.to_json, :headers => {})

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'


# minitest + Capybara
require "minitest/rails/capybara"
require "minitest/stub_any_instance"

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end


OmniAuth.config.test_mode = true





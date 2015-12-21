require "codeclimate-test-reporter"
require "minitest/reporters"
CodeClimate::TestReporter.start

Minitest::Reporters.use!

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

# Stub APIs and shut down external network requests
require 'webmock/minitest'
WebMock.disable_net_connect!(allow_localhost: true)

# minitest + Capybara
require "minitest/rails/capybara"
require "minitest/stub_any_instance"

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

OmniAuth.config.test_mode = true




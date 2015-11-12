require_relative 'integration_spec_helper'

# not needed
# Capybara.default_host = 'http://localhost'

OmniAuth.config.test_mode = true
OmniAuth.config.add_mock :spotify, IntegrationSpecHelper::RSPOTIFY_PARAMS
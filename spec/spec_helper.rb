require 'rack/test'
require 'rspec/its'

ENV['RACK_ENV'] = 'test'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    # Stay ahead of RSpec 4
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    # Stay ahead of RSpec 4
    mocks.verify_partial_doubles = true
  end

  config.include Rack::Test::Methods
end

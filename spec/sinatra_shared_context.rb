require 'rspec'
require 'json'

RSpec.shared_context 'sinatra app' do
  let(:app) { subject } # Rack::Test needs app to resolve
  let(:json_response) do
    JSON.load(last_response.body)
  end

  def post_json(uri, params = {}, env = {}, &block)
    new_env = env.merge('CONTENT_TYPE' => 'application/json')
    post(uri, JSON.dump(params), new_env, &block)
  end
end

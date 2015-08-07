require 'sinatra_shared_context'

require 'franky/sing'

describe Franky::Sing do
  include_context 'sinatra app'

  describe 'GET /sing' do
    before { get('/sing') }
    it { expect(last_response).to be_ok }
    it { expect(json_response).to have_key('foo') }
  end

  describe 'POST /sing' do
    context 'with invalid input' do
      before { post_json('/sing', {}) }
      it { expect(last_response).to be_ok }
      it { expect(json_response['result']).to eq('error')}
    end

    context 'with valid input' do
      before { post_json('/sing', tune: 'Paradise City') }
      it { expect(last_response).to be_ok }
      it { expect(json_response['message']).to eq('Gonna sing Paradise City') }
    end
  end
end

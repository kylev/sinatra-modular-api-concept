require 'sinatra_shared_context'

require 'franky/dance'

describe Franky::Dance do
  include_context 'sinatra app'

  describe 'GET /dance' do
    before { get('/dance') }

    it { expect(last_response).to be_ok }
    it { expect(json_response['step']).to eq('Waltz') }
  end

  describe 'GET /trip' do
    context 'with no params' do
      before { get('/trip') }

      it { expect(last_response).to be_ok }
      it { expect(json_response['status']).to eq('error') }
    end
  end
end

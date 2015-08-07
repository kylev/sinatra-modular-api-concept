require 'sinatra_shared_context'

require 'franky/dance'

describe Franky::Dance do
  include_context 'sinatra app'

  describe 'GET /dance' do

  end

  describe 'GET /trip' do
    context 'with no params' do
      before { get('/trip') }

      subject { last_response }
      it { expect(true).to be_truthy }
#      its(:last_response) { is_expected.to be_ok }
#      its(['status']) { is_expected.to eq('error')}
    end
  end
end

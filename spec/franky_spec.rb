require 'franky'

describe Franky do
  it { is_expected.to be_a(Module) }

  describe Franky::Root do
    it { is_expected.to be_a(Sinatra::Wrapper) }
  end
end

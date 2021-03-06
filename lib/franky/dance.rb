require 'franky/base'

module Franky
  # Franky dances.
  class Dance < Franky::Base
    get '/dance' do
      json(step: 'Waltz')
    end

    get '/trip' do
      halt_json(status: :error)
    end
  end
end

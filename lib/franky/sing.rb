require 'json'

require 'franky/base'

module Franky
  # Franky sings.
  class Sing < Franky::Base
    get '/sing' do
      json(foo: :bar)
    end

    post '/sing' do
      body = JSON.load(request.body)
      halt_json(result: :error, message: 'No tune.') unless body.key?('tune')

      json(result: :success, message: "Gonna sing #{body['tune']}")
    end
  end
end

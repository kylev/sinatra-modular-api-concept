require 'json'

require 'franky/base'

module Franky
  class Sing < Franky::Base
    get '/sing' do
      json(foo: :bar)
    end

    post '/sing' do
      body = JSON.load(request.body)
      unless body.key?('tune')
        halt_json(result: :error, message: 'No tune.')
      end

      json(result: :success, message: "Gonna sing #{body['tune']}")
    end
  end
end

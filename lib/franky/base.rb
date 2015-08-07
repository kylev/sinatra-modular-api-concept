require 'sinatra/base'
require 'sinatra/json'
require 'json'

module Franky
  class Base < Sinatra::Base
    helpers do
      def halt_json(json)
        content_type :json
        halt(JSON.dump(json))
      end
    end
  end
end

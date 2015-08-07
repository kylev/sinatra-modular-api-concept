require 'sinatra/base'
require 'sinatra/json'
require 'json'

module Franky
  # Base class to provide Sinatra plus JSON api niceties.
  class Base < Sinatra::Base
    def halt_json(json)
      content_type :json
      halt(JSON.dump(json))
     end
  end
end

require 'sinatra/base'
require 'sinatra/json'

module Franky
  class Root < Sinatra::Base
    get '/' do
      json(status: :success, message: 'Nothing to see here.')
    end
  end

  # Insert sub-apps into the Root app.
  %w(sing dance).each do |part|
    require_relative "franky/#{part}"
    classname = part.split('_').map(&:capitalize).join
    Root.use const_get(classname)
  end
end

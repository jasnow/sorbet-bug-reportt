#!/usr/bin/env ruby
# typed: true

require 'sinatra/base'

class App < Sinatra::Base
  extend Sinatra::Helpers

  get '/' do
    body 'Hello world!'
  end
end

App.run! if __FILE__ == $0

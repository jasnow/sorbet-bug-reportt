#!/usr/bin/env ruby
# typed: strict

require 'sinatra/base'

class App < Sinatra::Base
  extend Sinatra::Helpers

  get '/' do
    body 'Hello world!'
  end
end

App.run! if __FILE__ == $0

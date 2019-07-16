# typed: false

require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    body 'Hello world!'
  end
end

App.run! if __FILE__ == $0

require 'sinatra'

configure do
  set :bind, '0.0.0.0'
end

get '/' do
  sleep params['wait'].to_i
  erb :index
end

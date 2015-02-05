require 'sinatra'

set :port, 3000
set :bind, '0.0.0.0'

puts "This is process #{Process.pid}"

get '/' do
  "Hello World!"
end

get '/error' do
  Process.kill 'KILL', Process.pid
end
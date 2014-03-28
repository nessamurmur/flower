require 'lotus/router'

app = Lotus::Router.new do
  get '/', to: ->(env) { [200, {}, ['Hi!']] }
end

Rack::Server.start app: app, Port: 1337

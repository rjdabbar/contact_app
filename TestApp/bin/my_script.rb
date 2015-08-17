require 'rest-client'
require 'addressable/uri'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users.html'
).to_s

puts RestClient.get(url)


test2 = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/'
).to_s

body = { "user" => {"name" => "Gizmo", "email" => 'gizmo@gizmo.gizmo'}}

puts RestClient.post(test2, body)
#
# test1 = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users/1'
# ).to_s
#
# body = { "user" => {"name" => "hello"}}
#
# puts RestClient.put(test1, body)

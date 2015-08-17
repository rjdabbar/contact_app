require 'rest-client'
require 'addressable/uri'
# bin/my_script.rb
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users.html'
# ).to_s
#
# puts RestClient.get(url)


test2 = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/',
  query_values: {
    'job[title]' => 'Developer',
    'job[location]' => 'App Academy',
    'address[one_address]' => 'another addresss',
    'phone[cellphone]' => '777777777',
    'phone[homephone]' => '555555555'
  }
).to_s

body = { "user" => {"name" => "hello"}}

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

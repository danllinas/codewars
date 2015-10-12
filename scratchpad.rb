require 'HTTParty'
require 'JSON'



html = ARGV.last

headers = {'Content-type' => 'application/json'}
puts HTTParty.post(html, headers: headers)

response = HTTParty.get(html)

puts response

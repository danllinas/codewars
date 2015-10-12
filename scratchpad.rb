require 'httparty'

method, site = ARGV

case method
when"GET"
  response = HTTParty.get(site)
when "POST"
  response = HTTParty.post(site)
end

puts response.response.code

response.headers.each do |key, value|
  puts "#{key}: #{value}"
end

# puts response.body

require 'httparty'

AG1 = ARGV[0]
AG2 = ARGV[1]


case AG1
when "GET"
  response = HTTParty.get(AG2)
end




p response.headers
puts response.body

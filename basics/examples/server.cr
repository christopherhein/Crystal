require "http/server"

server = HTTP::Server.new(8080) do |context|
  context.response.content_type = "text/json"
  context.response.print "{\"hello\":\"Friend\",\"time\":#{Time.now.epoch}}"
end

puts "Listening on :8080"
server.listen

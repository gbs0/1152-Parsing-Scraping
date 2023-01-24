require 'json'
require 'open-uri'

# TODO - Mostrar o nome e a bio de algum username proveniente do Github
puts "Welcome to Github User API"
puts "Insert a valid Github Username:"
print "> "
user = gets.chomp
url = "https://api.github.com/users/#{user}"
request = URI.open(url).read
response = JSON.parse(request)

puts "#{response["name"]} - #{response["bio"]}"

# Escrita - Para aprendizados futuros
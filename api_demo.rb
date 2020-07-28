require 'json'
require 'open-uri'

# TODO - Let's fetch name and bio from a given GitHub username
url = 'https://api.github.com/users/ssaunier'
user_serialized = open(url).read

# string.to_hash
user = JSON.parse(user_serialized)

p user['name']
p user['location']
p user.class
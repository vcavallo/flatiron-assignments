require 'json'
require 'rest_client'
require 'open-uri'

reddit_hash = JSON.parse(RestClient.get('http://reddit.com/.json'))

p reddit_hash